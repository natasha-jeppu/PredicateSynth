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
			 4
			 5
			 560
			 940
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

(constraint (= (next 0 0 0 0 true 1081 ) 4))
(constraint (= (next 1 0 0 0 true 560 ) 6))
(constraint (= (next 0 0 6 4 true 1062 ) 5))
(constraint (= (next 0 0 7 4 true 22 ) 6))
(constraint (= (next 0 0 9 4 true 1393 ) 1))
(constraint (= (next 0 3 8 0 true 1523 ) 6))

(check-synth)
