(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 10
			 11
			 15
			 20
			 532
			 907
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

(constraint (= (next 0 0 0 0 true 262 ) 3))
(constraint (= (next 0 0 0 0 true 766 ) 1))
(constraint (= (next 0 0 0 0 true 752 ) 6))
(constraint (= (next 1 0 0 0 true 1110 ) 7))
(constraint (= (next 0 2 24 7 true 480 ) 6))
(constraint (= (next 0 6 29 2 true 1973 ) 5))
(constraint (= (next 0 7 29 2 true 613 ) 1))
(constraint (= (next 0 8 29 2 true 124 ) 6))
(constraint (= (next 1 20 37 0 true 1375 ) 3))
(constraint (= (next 1 21 30 0 true 1451 ) 6))
(constraint (= (next 0 26 28 2 true 807 ) 3))
(constraint (= (next 0 27 28 2 true 1169 ) 7))

(check-synth)
