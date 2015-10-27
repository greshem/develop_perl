#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
temp
14.1 	Template parameters 					[temp.param] 

14.2 	Names of template specializations 		[temp.names] 

14.3 	Template arguments 					[temp.arg] 
14.3.1 		Template type arguments 					[temp.arg.type] 
14.3.2 		Template non-type arguments 				[temp.arg.nontype] 
14.3.3 		Template template arguments 				[temp.arg.template]

14.4 	Type equivalence [temp.type] 

14.5 	Template declarations [temp.decls] 
14.5.1 		Class templates [temp.class] 
14.5.1.1 		Member functions of class templates [temp.mem.func] 
14.5.1.2 		Member classes of class templates [temp.mem.class] 
14.5.1.3 		Static data members of class templates [temp.static] 
14.5.2 		Member templates [temp.mem] 
14.5.3 		Friends [temp.friend] 
14.5.4  	Class template partial specializations [temp.class.spec] 
14.5.4.1 		Matching of class template partial specializations [temp.class.spec.match] 
14.5.4.2 		Partial ordering of class template specializations [temp.class.order] 
14.5.4.3 		Members of class template specializations [temp.class.spec.mfunc] 

14.5.5 		Function templates [temp.fct] 
14.5.5.1  	Function template overloading [temp.over.link] 
14.5.5.1  	Function template overloading [temp.over.link] 
14.5.5.2 	Partial ordering of function templates [temp.func.order] 

14.6 	Name resolution [temp.res] 
14.6.1  		Locally declared names [temp.local] 
14.6.2 			Dependent names [temp.dep] 
14.6.2.1 			Dependent types [temp.dep.type] 
14.6.2.2 			Type-dependent expressions [temp.dep.expr] 
14.6.2.3 			Value-dependent expressions [temp.dep.constexpr] 
14.6.3 			Non-dependent names [temp.nondep] 
14.6.4 			Dependent name resolution [temp.dep.res] 
14.6.4.1  			Point of instantiation [temp.point] 
14.6.4.2 			Candidate functions [temp.dep.candidate] 
14.6.5  		Friend names declared within a class template [temp.inject] 

14.7 	Template instantiation and specialization [temp.spec] 
14.7.1 		Implicit instantiation [temp.inst] 
14.7.2 		Explicit instantiation [temp.explicit] 
14.7.3 		Explicit specialization [temp.expl.spec] 

14.8  	Function template specializations [temp.fct.spec] 
14.8.1  	Explicit template argument specification [temp.arg.explicit] 
14.8.2 		Template argument deduction [temp.deduct] 
14.8.2.1  		Deducing template arguments from a function call [temp.deduct.call] 
14.8.2.2  		Deducing template arguments taking the address of a function template [temp.deduct.funcaddr] 
14.8.2.3  		Deducing conversion function template arguments [temp.deduct.conv] 
14.8.2.4  		Deducing template arguments from a type [temp.deduct.type] 
14.8.3 		Overload resolution [temp.over] 


