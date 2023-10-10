# Description #

This project contains a working environment needed to simulate and test the capabilities of an educational robot (called E-Puck), virtually represented in Webots.
The robot is controlled using different enzymatic numerical P systems models. 
The road tests included in *Simulation results* are generated using [Ambiegen](https://arxiv.org/abs/2301.01234).
## Folder Structure ##

- Controllers: the robot controller used in our simulations

- Models: enzymatic numerical P systems models that are representing the core of the controller

- Simulation results: 10 road tests and their associated plots; each test is represented by a .txt file containing the road coordinates along with the coordinates for the trajectory using each model. The road is marked with grey, whilst the trajectory using *Model 1* is represented with red. The trajectory of *Model 2* is colored with green.

- Utils: utilities (Python files) to run the environment

- Worlds: test scenarios instantiated as scenes in Webots 


