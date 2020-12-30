(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 14
			 16
			 385
			 726
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

(constraint (= (next 1 0 0 0 true 396 ) 4))
(constraint (= (next 1 2 33 0 true 414 ) 4))
(constraint (= (next 1 11 26 0 true 1103 ) 1))
(constraint (= (next 1 13 24 0 true 668 ) 5))
(constraint (= (next 2 14 12 0 true 1297 ) 6))
(constraint (= (next 1 0 0 0 true 476 ) 5))

(check-synth)
