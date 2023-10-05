
import sys
# sys.path.insert(0, 'C:/P Systems/SNPS/pep/')
sys.path.insert(0, '../../utils')

from pep import readInputFile

from UtilWebots import UtilWebots

from controller import Robot


from Init import *

while robot.step(timestep) != -1:
    for sensor in sensors:
        value = utilWebots.get(sensor[1].getValue())
        sensor[0].value = value
    system.runSimulationStep()

    lw = variables['lw'].value
    rw = variables['rw'].value
# print('lw = {}, rw = {}'.format(lw, rw))

    leftMotor.setVelocity(lw)
    rightMotor.setVelocity(rw)

    # printEnzyme(['eds0', 'eds1', 'eds2', 'eds3'])
    # printEnzyme(['ed', 'eds', 'edw', 'edd'])
    # printVariables(['state', 'angle', 'directionLeft', 'directionRight', 'distance', 'angleStep', 'distanceStep'])
    printVariables(['lw', 'rw'])

    # value = dict(map(lambda o: (o, utilWebots.get(robotSensor[o].getValue())), ['ps7', 'ps0']))
    # print(value)
    # printVariables(['weightLeft', 'weightRight', 'directionLeft', 'directionRight'])
