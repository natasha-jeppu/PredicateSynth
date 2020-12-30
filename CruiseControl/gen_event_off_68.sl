(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 11
			 12
			 482
			 795
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

(constraint (= (next 1 0 0 0 true 1066 ) 5))
(constraint (= (next 1 0 0 0 true 1082 ) 6))
(constraint (= (next 0 8 21 3 true 597 ) 5))
(constraint (= (next 0 9 22 3 true 1354 ) 6))
(constraint (= (next 0 11 26 2 true 47 ) 4))
(constraint (= (next 1 13 20 0 true 1016 ) 7))
(constraint (= (next 0 15 18 4 true 253 ) 2))
(constraint (= (next 0 0 0 0 true 1337 ) 7))

(check-synth)
