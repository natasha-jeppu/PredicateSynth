(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 7
			 8
			 20
			 27
			 476
			 1057
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

(constraint (= (next 0 0 0 0 false 1282 ) 2))
(constraint (= (next 0 0 3 5 true 716 ) 4))
(constraint (= (next 0 0 1 5 true 199 ) 4))
(constraint (= (next 0 1 22 8 true 1539 ) 3))
(constraint (= (next 0 2 29 10 true 518 ) 1))
(constraint (= (next 0 9 34 7 true 1128 ) 6))
(constraint (= (next 0 10 41 10 true 1037 ) 5))
(constraint (= (next 0 12 49 10 true 947 ) 6))
(constraint (= (next 0 15 58 9 true 1568 ) 4))
(constraint (= (next 0 23 33 4 true 1638 ) 1))

(check-synth)
