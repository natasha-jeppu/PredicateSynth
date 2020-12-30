import xlsxwriter
import os
import re
import time
import subprocess
from termcolor import colored

def get_ind(file):
	ind = re.findall('[0-9]+',file)
	if not ind:
		return -1
	return int(ind[0])

def cvc4_process(root, file):
	return subprocess.Popen('cvc4 ' + 
		os.path.join(root,file), stdout=subprocess.PIPE, 
		stderr=subprocess.PIPE, shell=True)

def cvc4_post_process(output):
	if 'unsat' not in str(output):
		print(colored("[WARNING] FAILED",'magenta'))
		return False, 'FAILED'
	output = str(output).replace('b\'unsat\\n','').replace('\'','').replace('\\n','')
	print(output)
	return True, output

workbook = xlsxwriter.Workbook('result1.xlsx') 
worksheet = workbook.add_worksheet() 

worksheet.write('A1', 'Folder') 
worksheet.write('B1', 'Benchmark') 
worksheet.write('C1', 'Runtime') 
worksheet.write('D1', 'Output')

i = 2

for root, dir, files in os.walk("."):
	print(root)
	print("")
	sl_files = [file for file in files if '.sl' in file]
	sl_files.sort(key=get_ind)
	if not sl_files:
		continue
	
	for file in sl_files:
		print(os.path.join(root,file))
		worksheet.write('A' + str(i), root) 
		worksheet.write('B' + str(i), file)

		start_time = time.time()
		p = cvc4_process(root, file)
		try:
			output, o_err = p.communicate(timeout=60)
			p.kill()
		except subprocess.CalledProcessError:
			p.kill()
			print(colored("[WARNING] FAILED",'magenta'))
			worksheet.write('D' + str(i), 'FAILED')
			i = i + 1
			continue
		except subprocess.TimeoutExpired:
			p.kill()
			print(colored("[WARNING] TIMEOUT",'magenta'))
			worksheet.write('C' + str(i), 'TIMEOUT')
			i = i + 1
			continue
		end_time = time.time()

		flag, output = cvc4_post_process(output)
		if not flag:
			worksheet.write('D' + str(i), 'FAILED')
		else:
			worksheet.write('D' + str(i), output)

		worksheet.write('C' + str(i), end_time - start_time)

		i = i+1
	i = i+1
	print ("")

workbook.close()
