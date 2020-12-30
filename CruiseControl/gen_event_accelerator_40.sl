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
			 3
			 5
			 6
			 396
			 465
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

(constraint (= (next 0 0 1 5 true 404 ) 7))
(constraint (= (next 0 0 0 5 true 28 ) 5))
(constraint (= (next 0 0 1 5 true 361 ) 6))
(constraint (= (next 0 0 12 9 true 1218 ) 2))
(constraint (= (next 0 0 1 5 true 369 ) 1))
(constraint (= (next 0 0 4 5 true 408 ) 3))

(check-synth)
