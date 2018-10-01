equal:{[ch1;ch2]
	:$[ch1~ch2;1;-1];
 }

local_distance:{[q;t]
	lq:count q;
	lt:count t;

	/init the matrix distance
	mat:((lq+1);(lt+1))#0N;
	mat[0;]:0;
	mat[;0]:0;

	i:1;j:1;
	/fill in the values
	do[lq;
		do[lt;
		mat[i;j]:max(
				0;
                                mat[i-1;j]-1;
                                mat[i;j-1]-1;
                                mat[i-1;j-1]+equal[q[i-1];t[j-1]]
				);
		j+:1;
		/show mat;
		];
	j:1;
	i+:1;
	];

	/return the best alignment
	:max raze mat;
 }
