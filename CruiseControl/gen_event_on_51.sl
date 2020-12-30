(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 407
			 918
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

(constraint (= (next 0 0 0 0 true 465 ) 4))
(constraint (= (next 0 0 0 0 true 519 ) 3))
(constraint (= (next 0 0 1 0 true 722 ) 1))
(constraint (= (next 0 0 1 0 true 1116 ) 5))
(constraint (= (next 0 0 0 0 true 1462 ) 1))
(constraint (= (next 0 0 0 0 true 1221 ) 2))

(check-synth)
