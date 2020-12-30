(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 473
			 546
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

(constraint (= (next 0 0 0 0 true 281 ) 1))
(constraint (= (next 0 0 0 0 true 275 ) 5))
(constraint (= (next 0 0 0 0 true 1409 ) 7))
(constraint (= (next 1 0 0 0 true 650 ) 1))
(constraint (= (next 1 0 0 0 true 79 ) 7))
(constraint (= (next 3 0 0 0 true 580 ) 5))

(check-synth)
