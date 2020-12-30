(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 520
			 625
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

(constraint (= (next 0 0 7 4 true 1539 ) 3))
(constraint (= (next 0 2 8 5 true 254 ) 7))
(constraint (= (next 0 2 1 5 true 275 ) 4))
(constraint (= (next 0 2 4 5 true 893 ) 3))
(constraint (= (next 0 4 10 5 true 199 ) 7))
(constraint (= (next 0 0 2 5 true 590 ) 1))

(check-synth)
