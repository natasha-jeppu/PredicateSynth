(set-logic LIA)
(synth-fun next ((ssm Int) (fresh Bool) (valid Bool) (count_f Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 (ite StartBool Start Start)))

	(Var Int (
			 4
			 7
			 ssm
			 count_f
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 fresh
				 	 valid
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 2 false false 0 ) 0))
(constraint (= (next 1 false false 1 ) 0))
(constraint (= (next 1 true false 1 ) 0))

(check-synth)
