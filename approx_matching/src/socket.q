executeQuery:{[dict] fn:dict`fn;params:dict`params;$[count (dict`table);("data";"format";"tblName")!(flip value -2_flip value dict`table;flip value -2#flip value dict`table;dict`table);(enlist "res")!enlist execute[fn;params]]};

execute:{[fn;params]
	if[fn like "find_approx_match_local_distance";:find_approx_match_local_distance[params;10000#tweets;0.7]];
	if[fn like "find_approx_match_n_gram";:find_approx_match_n_gram[params;100000#tweets;0.3]];
 }

/initDate:{value exec min date, max date from p}

.z.pg:{-1 "[USAGE LOG] time: ",(string .z.Z),"| User: ",(string .z.u),"| ip: ",("." sv string "i"$0x0 vs .z.a),"| Query: ",-3!y;x y}$[0~@[value;`.z.pg;0];value;value `.z.pg]

.z.ps:{-1 "[USAGE LOG] time: ",(string .z.Z),"| User: ",(string .z.u),"| ip: ",("." sv string "i"$0x0 vs .z.a),"| Query: ",-3!y;x y}$[0~@[value;`.z.ps;0];value;value `.z.ps]

.z.ph:{-1 "[USAGE LOG] time: ",(string .z.Z),"| User: ",(string .z.u),"| ip: ",("." sv string "i"$0x0 vs .z.a),"| Query: ",-3!y;x y}$[0~@[value;`.z.ph;0];value;value `.z.ph]

.z.ws:{-1 "[USAGE LOG] time: ",(string .z.Z),"| User: ",(string .z.u),"| ip: ",("." sv string "i"$0x0 vs .z.a),"| Query: ",-3!query:-9!x;neg[.z.w] -8!executeQuery[query]}