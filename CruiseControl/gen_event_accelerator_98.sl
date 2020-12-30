(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 497
			 743
			 brake
			 distance
			 speed
			 throttle
			 time
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
				 	 ignition
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 0 0 0 0 false 282 ) 6))
(constraint (= (next 0 0 0 0 false 1610 ) 3))
(constraint (= (next 0 0 4 5 true 935 ) 1))
(constraint (= (next 0 0 8 5 true 997 ) 4))
(constraint (= (next 0 0 0 0 false 126 ) 3))
(constraint (= (next 0 0 2 5 true 556 ) 1))
(constraint (= (next 0 0 5 5 true 695 ) 3))

(check-synth)
