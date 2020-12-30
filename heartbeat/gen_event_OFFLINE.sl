(set-logic LIA)
(synth-fun next ((is_input Bool) (timer Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 5
			 timer
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 is_input
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next false 6 ) 1))
(constraint (= (next false 6 ) 1))
(constraint (= (next false 6 ) 1))
(constraint (= (next false 6 ) 1))
(constraint (= (next false 6 ) 1))
(constraint (= (next true 6 ) 0))
(constraint (= (next true 6 ) 0))

(check-synth)
