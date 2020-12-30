(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 7
			 10
			 583
			 1208
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

(constraint (= (next 0 0 0 0 true 1764 ) 1))
(constraint (= (next 0 0 8 4 true 942 ) 4))
(constraint (= (next 0 10 21 0 true 1611 ) 2))
(constraint (= (next 0 0 0 0 true 517 ) 4))

(check-synth)
