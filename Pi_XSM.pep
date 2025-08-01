-num_ps = {
    # membrane names (labels)
    H = {m1, m2, m3};

    structure = [m1 [m2 [m3 ]m3 ]m2 ]m1;

    # membrane 1
    m1 = {
        var = {x_1_1}; # variables used in the production function
        pr = {2*(x_1_1+1) * (x_1_1%3==0) -> 1|x_1_1 +1|x_1_2};
		pr = {3*(x_1_1+1) * (x_1_1%3==1) -> 1|x_1_1+2|x_1_2};
		pr = { x_1_1 * (x_1_1%3==2) -> 1|x_1_1};
		
        var0 = (3);
    };

    m2 = {
        var = {x_1_2,x_2_2}; # variables used in the production function
        pr = {3*(x_2_2+x_1_2) * (x_2_2%3==2) -> 1|x_2_2 +1|x_1_2+1|x_1_1};
		pr = {2*(x_1_2+x_2_2) * (x_2_2%3==0) -> 1|x_1_2+1|x_2_2};
		pr = { x_1_2 * (x_2_2%3==1) -> 1|x_1_2};
		pr = { x_2_2 * (x_2_2%3==1) -> 1|x_2_2};
		
		
        var0 = (4,6);
    };
	
	m3 = {
        var = {x_1_3};
		pr = { 3*floor(x_1_3/2) *(x_1_3>0) -> 2|x_2_2+1|x_1_3};
		pr= {x_1_3 *(x_1_3==0) -> 1|x_1_3};
        var0 = (2);
    };

    
   
}

