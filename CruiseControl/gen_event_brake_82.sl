(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 560
			 1045
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

(constraint (= (next 1 0 0 0 true 1507 ) 1))
(constraint (= (next 1 0 0 0 true 399 ) 1))
(constraint (= (next 1 0 0 0 true 401 ) 1))
(constraint (= (next 1 0 0 0 true 1297 ) 5))
(constraint (= (next 1 0 0 0 true 574 ) 3))
(constraint (= (next 2 0 0 0 true 1614 ) 3))
(constraint (= (next 3 0 0 0 true 1520 ) 3))

(check-synth)
