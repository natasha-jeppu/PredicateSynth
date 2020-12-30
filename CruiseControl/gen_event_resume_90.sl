(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 3
			 8
			 10
			 19
			 23
			 514
			 1058
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

(constraint (= (next 0 0 4 5 true 168 ) 5))
(constraint (= (next 0 0 7 4 true 1640 ) 4))
(constraint (= (next 0 1 11 3 true 1470 ) 6))
(constraint (= (next 0 5 29 2 true 987 ) 3))
(constraint (= (next 0 16 52 0 true 1131 ) 7))
(constraint (= (next 0 25 33 2 true 950 ) 7))

(check-synth)
