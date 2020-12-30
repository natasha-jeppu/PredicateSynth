(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 10
			 17
			 594
			 970
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

(constraint (= (next 0 0 0 0 true 1366 ) 7))
(constraint (= (next 0 0 0 0 true 970 ) 7))
(constraint (= (next 1 0 0 0 true 546 ) 6))
(constraint (= (next 0 0 0 0 true 1369 ) 6))
(constraint (= (next 0 0 20 8 true 12 ) 7))
(constraint (= (next 0 5 42 9 true 1560 ) 2))

(check-synth)
