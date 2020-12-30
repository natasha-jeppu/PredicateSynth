(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 113
			 1506
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

(constraint (= (next 0 0 0 0 true 1498 ) 3))
(constraint (= (next 0 0 0 0 true 1491 ) 1))
(constraint (= (next 0 0 5 0 true 1305 ) 4))
(constraint (= (next 0 1 5 0 true 1651 ) 6))
(constraint (= (next 0 2 15 3 true 1538 ) 7))
(constraint (= (next 0 0 0 0 true 1612 ) 5))
(constraint (= (next 0 0 0 0 true 1450 ) 7))

(check-synth)
