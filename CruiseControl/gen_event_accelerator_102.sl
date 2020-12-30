(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 10
			 14
			 498
			 1078
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

(constraint (= (next 0 0 3 5 true 683 ) 3))
(constraint (= (next 0 1 13 5 true 865 ) 7))
(constraint (= (next 0 2 15 4 true 1261 ) 7))
(constraint (= (next 0 5 3 5 true 735 ) 1))
(constraint (= (next 0 5 5 5 true 489 ) 1))
(constraint (= (next 0 5 7 5 true 454 ) 6))
(constraint (= (next 0 5 17 9 true 1292 ) 7))
(constraint (= (next 0 7 14 4 true 1588 ) 3))
(constraint (= (next 0 9 28 8 true 1547 ) 4))
(constraint (= (next 0 11 30 4 true 1863 ) 1))

(check-synth)
