(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 711
			 873
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

(constraint (= (next 0 0 0 0 true 1225 ) 3))
(constraint (= (next 0 0 0 0 true 42 ) 7))
(constraint (= (next 0 0 0 0 true 1286 ) 3))
(constraint (= (next 0 0 0 0 true 111 ) 4))
(constraint (= (next 0 0 0 0 true 1381 ) 5))
(constraint (= (next 0 0 0 0 true 33 ) 5))
(constraint (= (next 0 0 0 0 true 504 ) 6))
(constraint (= (next 0 0 0 0 true 1311 ) 3))
(constraint (= (next 0 0 0 0 true 1962 ) 4))

(check-synth)
