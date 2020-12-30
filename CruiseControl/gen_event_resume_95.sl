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
			 9
			 12
			 459
			 1003
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

(constraint (= (next 0 0 0 0 true 881 ) 7))
(constraint (= (next 1 0 0 0 true 1074 ) 6))
(constraint (= (next 0 0 9 4 true 1663 ) 4))
(constraint (= (next 0 0 11 3 true 1092 ) 7))
(constraint (= (next 1 3 6 0 true 1450 ) 3))
(constraint (= (next 0 5 13 1 true 1549 ) 3))
(constraint (= (next 0 8 23 1 true 545 ) 1))
(constraint (= (next 0 9 23 2 true 228 ) 1))
(constraint (= (next 0 10 26 1 true 888 ) 6))
(constraint (= (next 0 0 7 4 true 664 ) 5))

(check-synth)
