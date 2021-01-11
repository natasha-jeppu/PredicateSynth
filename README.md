# Benchmarks for Predicate Synthesis
This repository contains a set of benchmarks for automaton transition predicate synthesis and simplification.</br>

# Usage
~~~
usage: run.py [-h] [-o OUTPUT_FILENAME] [-t TIMEOUT]

optional arguments:
  -h, --help            show this help message and exit
  -o OUTPUT_FILENAME, --output_file OUTPUT_FILENAME
                        Excel file name to store results [default:'result']
  -t TIMEOUT, --timeout TIMEOUT
                        Timeout in seconds [default:60]
~~~
To run all benchmarks:
~~~
cd PredicateSynth
python3 run.py
~~~
The default synthesis tool used is cvc4. This can be changed by adding functions for calling the required
synthesis tool and processing the tool output. See functions `cvc4_process` and `cvc4_post_process` in `run.py`.</br>

