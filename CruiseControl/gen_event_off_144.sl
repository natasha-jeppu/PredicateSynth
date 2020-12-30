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
			 6
			 9
			 24
			 27
			 478
			 1369
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

(constraint (= (next 1 0 0 0 true 1730 ) 3))
(constraint (= (next 2 0 0 0 true 1076 ) 7))
(constraint (= (next 0 0 0 0 true 1553 ) 7))
(constraint (= (next 0 0 11 4 true 1563 ) 5))
(constraint (= (next 0 1 14 3 true 1473 ) 6))
(constraint (= (next 0 2 32 7 true 1814 ) 6))
(constraint (= (next 0 6 50 9 true 1721 ) 7))
(constraint (= (next 0 11 44 4 true 1597 ) 4))
(constraint (= (next 0 18 64 8 true 853 ) 1))
(constraint (= (next 1 24 51 0 true 311 ) 6))

(check-synth)
