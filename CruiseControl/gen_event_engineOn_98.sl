(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 578
			 815
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

(constraint (= (next 0 0 0 0 true 291 ) 7))
(constraint (= (next 0 0 4 0 true 85 ) 5))
(constraint (= (next 0 0 0 0 true 1337 ) 1))
(constraint (= (next 0 0 0 0 true 373 ) 3))
(constraint (= (next 0 0 0 0 true 874 ) 5))
(constraint (= (next 0 0 0 0 true 1937 ) 7))
(constraint (= (next 0 0 0 0 true 1416 ) 3))
(constraint (= (next 0 0 0 0 true 972 ) 6))
(constraint (= (next 0 0 8 4 true 819 ) 3))
(constraint (= (next 0 0 10 4 true 503 ) 2))
(constraint (= (next 0 0 0 0 true 65 ) 3))
(constraint (= (next 0 0 0 0 true 1111 ) 1))

(check-synth)
