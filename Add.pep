num_ps = {
    # membrane names (labels)
    H = {Env1, Env2,Input1,Input2,Compute, Output};

    structure = [Compute [Input1 [Env1 ]Env1 ]Input1 [Input2 [Env2 ]Env2 ]Input2 [Output ]Output ]Compute;

    # membrane 1
	Env1 = {
        var = {e_1}; # variables used in the production function
		pr={floor(e_1/2) -> 1|e_1 };
		pr={(e_1*0 +3)* (e_1%2==1)-> 1|i_1 };
		pr={(e_1*0+1) * (e_1%2==0) -> 1|i_1 };
		#pr={(0-2) * (e_1==0) -> 1|i_1 };
        var0 = (1);
    };
    Env2 = {
        var = {e_2}; # variables used in the production function
		pr={floor(e_2/2) -> 1|e_2 };
		pr={(e_2*0 +3)* (e_2%2==1)-> 1|i_2 };
		pr={(e_2*0+1) * (e_2%2==0) -> 1|i_2 };
		#pr={(0-2) * (e_2==0) -> 1|i_2 };
        var0 = (3);
    };

    Input1 = {
        var = {i_1}; # variables used in the production function
        pr = {i_1 *0*(i_1==1) -> 1|c};
		pr = {i_1/3 *(i_1==3) -> 1|c};
		
        var0 = (-1);
    };
	
	Input2= {
        var = {i_2}; # variables used in the production function
        pr = {i_2 *0*(i_2==1) -> 1|c};
		pr = {i_2/3 *(i_2==3) -> 1|c};
		
        var0 = (-1);
    };
	
	Compute= {
        var = {c}; # variables used in the production function
        pr = {c * (c==1) -> 1|o};
		pr ={ c/2 * (c==2) -> 1|c};
		pr ={ c*2/3  *(c==3) -> 1|c +1|o};
        var0 = (0);
    };
	
	
	

    Output = {
        var = {o, s,p}; # variables used in the production function
        pr = {o*2^p * (p>=0) -> 1|s };
		pr = {p+1-> 1|p };
		
        var0 = (0,0,-3);
    };

   
}

