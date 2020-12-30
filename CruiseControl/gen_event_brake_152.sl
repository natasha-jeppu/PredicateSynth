(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 519
			 1229
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

(constraint (= (next 1 0 2 0 true 401 ) 5))
(constraint (= (next 1 0 0 0 true 1248 ) 1))
(constraint (= (next 1 1 10 0 true 841 ) 5))
(constraint (= (next 2 1 2 0 true 1615 ) 1))
(constraint (= (next 1 2 8 0 true 1513 ) 3))
(constraint (= (next 1 6 10 0 true 1758 ) 6))

(check-synth)
