(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 387
			 819
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

(constraint (= (next 0 0 0 0 true 335 ) 5))
(constraint (= (next 0 0 0 0 true 1026 ) 3))
(constraint (= (next 0 0 0 0 true 887 ) 3))
(constraint (= (next 0 0 0 0 true 1421 ) 5))
(constraint (= (next 0 0 8 4 true 739 ) 5))
(constraint (= (next 1 2 10 0 true 504 ) 1))

(check-synth)
