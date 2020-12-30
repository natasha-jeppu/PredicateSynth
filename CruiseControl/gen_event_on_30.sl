(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 554
			 1105
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

(constraint (= (next 0 1 1 0 true 1554 ) 5))
(constraint (= (next 0 1 1 0 true 1071 ) 3))
(constraint (= (next 0 1 1 0 true 491 ) 7))
(constraint (= (next 0 1 0 0 true 379 ) 4))
(constraint (= (next 0 1 0 0 true 1577 ) 1))

(check-synth)
