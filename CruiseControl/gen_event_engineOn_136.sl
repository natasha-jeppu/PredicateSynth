(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 15
			 16
			 572
			 1239
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

(constraint (= (next 0 0 0 0 true 1940 ) 1))
(constraint (= (next 0 1 26 8 true 1668 ) 7))
(constraint (= (next 0 6 30 2 true 1132 ) 4))
(constraint (= (next 1 10 22 0 true 701 ) 3))
(constraint (= (next 1 11 16 0 true 1981 ) 2))
(constraint (= (next 0 0 0 0 true 1716 ) 2))
(constraint (= (next 0 0 0 0 true 510 ) 6))
(constraint (= (next 0 0 0 0 true 563 ) 7))
(constraint (= (next 0 1 28 9 true 812 ) 3))
(constraint (= (next 0 2 36 8 true 1366 ) 4))

(check-synth)
