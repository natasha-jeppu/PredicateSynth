(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
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
			 7
			 654
			 1062
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

(constraint (= (next 0 0 0 0 true 1602 ) 6))
(constraint (= (next 0 2 12 0 true 1143 ) 2))
(constraint (= (next 0 0 0 0 true 1718 ) 7))
(constraint (= (next 0 0 0 0 true 380 ) 3))
(constraint (= (next 0 0 0 0 true 1916 ) 6))
(constraint (= (next 0 0 9 4 true 653 ) 4))
(constraint (= (next 0 2 9 1 true 534 ) 5))
(constraint (= (next 1 2 11 0 true 245 ) 7))
(constraint (= (next 0 4 16 4 true 1835 ) 3))
(constraint (= (next 0 4 17 3 true 593 ) 4))

(check-synth)
