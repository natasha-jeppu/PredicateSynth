(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 432
			 1263
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

(constraint (= (next 1 0 4 0 true 1020 ) 1))
(constraint (= (next 1 0 1 0 true 1273 ) 6))
(constraint (= (next 1 1 3 0 true 1867 ) 6))
(constraint (= (next 1 1 5 0 true 893 ) 1))

(check-synth)
