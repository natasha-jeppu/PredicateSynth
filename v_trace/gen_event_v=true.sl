(set-logic LIA)
(synth-fun next ((ssm Int) (fresh Bool) (count_v Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 3
			 4
			 ssm
			 count_v
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 fresh
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 1 true 0 ) 1))
(constraint (= (next 1 false 1 ) 1))
(constraint (= (next 1 false 2 ) 1))
(constraint (= (next 2 false 3 ) 0))

(check-synth)
