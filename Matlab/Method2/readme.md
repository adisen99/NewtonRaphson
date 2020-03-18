## Method 2

This method in MATLAB is intended for those who don't have Math tools in their MATLAB program. (Also I was unable to manually define the derivative of a function in MATLAB when I wrote the code for this program). This method uses the following steps -

* Creat 4 ``*.m`` MATLAB files named Fun.m, FunDer.m, NewtonRoot.m, and ENMDA_02.m; 

* The Fun.m contains the user defined Function and the FunDer.m file contains the Derivative of the same function used in Fun which unfortunately the user himself has to define. (**_If someone can help modify the code to determine the derivative as a function in the FunDer.m file, rather than defining it everytime, then I will really appreciate it_**)

* The NewtonRoot file contains the actual algorithm used here defined as a function whose input variables are-
	* the function Fun
	* the function FunDer
	* the initial approximation Xest
	* The user defined precision of the solution defined as Err examples are 0.1, 0.01, 0.001, etc.
	* The no. of maximum iterations to carry out defined as imax

* Write the output solution of the code using ``fprintf``. The final solution is obtained after the iteration as ``Xs``.

* Write another MATLAB ``.m`` file, that contains the ouput solution as Xsolution defined by appying the function defined in ``NewtonRoot.m`` and taking the functions ``from Fun.m`` and ``FunDer.m`` as input variables.

#### Important Note - 

**The user is only supposed to run the the ``run_this_only.m`` MATLAB file and none of the other files. Also make sure that all the files are present in the same directory, otherwise there will be an error while calling the NewtonRoot funtion**

_______________________________________________________________________________________________________________________________