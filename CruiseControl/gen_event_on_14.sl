(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 538
			 1172
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

(constraint (= (next 0 0 0 0 true 487 ) 6))
(constraint (= (next 0 1 5 0 true 1588 ) 7))
(constraint (= (next 0 2 8 1 true 1707 ) 6))
(constraint (= (next 0 3 12 1 true 1309 ) 1))
(constraint (= (next 0 3 12 1 true 899 ) 5))
(constraint (= (next 0 4 8 1 true 513 ) 5))
(constraint (= (next 0 0 7 0 true 1702 ) 7))

(check-synth)
