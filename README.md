# Benchmarks for Predicate Synthesis
This repository contains a set of benchmarks for Syntax-Guided Synthesis (SyGuS) in the domain of learning system abstractions, as automata, from trace data.</br>
Raw trace data can often be large and unstructured, and in order to better understand the system information they represent, we need some means of consolidating trace information into meaningful expressions. One way of achieving this is to use program synthesis, where trace data is used to define synthesis constraints and the generated expression is a generalisation of the input trace. The generated expressions can further serve as transitions predicates of an automaton that encodes sequential system behaviour, thereby generating an abstraction of the system from its trace. The set of benchmarks provided in this repository uses SyGuS to generate these automaton transition predicates from trace data for a variety of domains.</br></br>

Each SyGuS input file (with the .sl extension) is an instance of predicate synthesis. The repository additionally provides a script to run all benchmarks and collate the results as an Excel file. The script tracks synthesis runtime and the generated solution for each run.

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
synthesis tool and processing the tool output. See functions `cvc4_process()` and `cvc4_post_process()` in `run.py` for reference.</br>
