# Lab5Rob22-1
#  Industrial robotics No.2

By: Jhon Brandol Muñoz Romero, Nicolas Gil Rojas and 
Jorge Luis Reina Jara

## Task to develop
In this laboratory number 5, it will be described step by step what was done to reach the two proposed tasks.

## Task 1

for the first task, laboratory number four has been used to add 2 digital inputs (DI 01 and DI 02),therefore, the first routine that the robot must do when the first button located at the bottom and to the left of the button panel is pressed is to write the initials of the names of each member of the group in the XY plane.

When the first task that has been chosen is finished, the flexpendant shows a message to execute the next task through the input button.you can see in the following image:


<a href="https://ibb.co/BPZcqJj"><img src="https://i.ibb.co/hMWLDNH/Screenshot-from-2022-07-06-19-11-45.png" alt="Screenshot-from-2022-07-06-19-11-45" border="0"></a>

Using as base the previous lab we modified the code to use as enabling signals some digital inputs created in RobotStudio. In the _LJN_IO.mod_ file it is possible to find 2 extra lines on the main refering to this inputs.

The simulation in RobotStudio is available on this [link](https://youtu.be/4ZMntHyAFSg).

Using the robots we found that, first on the task created con only be one file containing the main procedure as it will find it ambiguous, and second, as we didn't had the I/O inputs named equally to the ones created on the controller the RAPID code had to be updated to match the names on the inputs we'll be using. 

This is the [video](https://youtu.be/l5Zzl4wflTc) of the implementation of the practice with real robots. Sadly, because the short time we had to test the code, the inclined surface was put too far from where it should be and the robot didn't wrote the letters.

## Task 2
In this part of the practice, an electro-pneumatic gripper has been used, which is enabled to grab an object that will be on the floor.Therefore, pneumatic gripper has been used, which tool is called `ABB_Smart_Gripper`.

<a href="https://imgbb.com/"><img src="https://i.ibb.co/XYcJSj6/Screenshot-from-2022-07-06-21-24-56.png" alt="Screenshot-from-2022-07-06-21-24-56" border="0"></a>

This is the [video](https://youtu.be/VUhNDPTJC58)

<a href="https://ibb.co/z8xKPct"><img src="https://i.ibb.co/7gC7rc0/Screenshot-from-2022-07-06-21-19-54.png" alt="Screenshot-from-2022-07-06-21-19-54" border="0"></a>

This is the [video](https://youtu.be/VbusJI-J9fM)
This is the [video](https://youtu.be/MAuK2V5rwKk)

## Conclusions
- At the time of doing the tests with the real robots, it had to be verified in the control panel where the cables were connected to the buttons and selectors When a  specific LED lights up. Since, on occasions, they had faults or were disconnected.

