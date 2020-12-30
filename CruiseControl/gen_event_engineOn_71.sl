(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 8
			 12
			 571
			 840
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

(constraint (= (next 0 0 0 0 true 1261 ) 7))
(constraint (= (next 0 0 0 0 true 1515 ) 7))
(constraint (= (next 0 0 0 0 true 342 ) 6))
(constraint (= (next 0 0 7 4 true 1111 ) 1))
(constraint (= (next 0 0 0 0 true 1186 ) 5))
(constraint (= (next 0 0 0 0 true 1389 ) 6))
(constraint (= (next 0 0 13 7 true 609 ) 5))
(constraint (= (next 0 2 20 0 true 106 ) 7))

(check-synth)
