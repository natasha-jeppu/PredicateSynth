(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 7
			 12
			 13
			 476
			 1271
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

(constraint (= (next 0 0 0 0 true 1953 ) 6))
(constraint (= (next 0 0 9 4 true 1130 ) 6))
(constraint (= (next 0 3 34 7 true 1010 ) 1))
(constraint (= (next 0 13 8 1 true 735 ) 1))
(constraint (= (next 0 15 11 0 true 1526 ) 2))

(check-synth)
