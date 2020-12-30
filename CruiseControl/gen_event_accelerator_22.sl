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
			 3
			 5
			 6
			 14
			 20
			 544
			 850
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

(constraint (= (next 0 0 1 5 true 435 ) 7))
(constraint (= (next 0 0 3 5 true 479 ) 4))
(constraint (= (next 0 0 9 4 true 1525 ) 3))
(constraint (= (next 0 3 13 4 true 1155 ) 1))
(constraint (= (next 0 4 18 5 true 1165 ) 5))
(constraint (= (next 0 5 24 9 true 527 ) 6))
(constraint (= (next 0 5 26 10 true 154 ) 5))
(constraint (= (next 0 11 29 4 true 1472 ) 6))
(constraint (= (next 0 12 38 9 true 1398 ) 6))
(constraint (= (next 0 13 39 10 true 194 ) 7))

(check-synth)
