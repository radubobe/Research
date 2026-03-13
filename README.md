Added learning algorithm from https://github.com/ionutmihainiculescu/algorithms along with the results of the case study on generating a test suite for a NP system with Boolean Conditions. 
The project contains:

-Python implementation of L^l algorithm (learning_algorithm.py)

-the test file using traces that covers all the processing functions, having results in experiment_1.txt in folder "results" (tests.py)

-the test file using traces that activates all the programs of the NPS, having results in experiments_2.txt and experiments_3.txt in folder "results"(program_cover_tests.py)

-the NPS implementation in PeP (Pi_XSM.pep)

-the traces for the Numerical P systems, along with the meaning of each processing function (traces_pi.txt in folder "traces")


Prerequisites:

-PeP NPS simulator 
- Python: 3.13.5
- tabulate: 0.10.0 (MIT license)
