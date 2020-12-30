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
			 3
			 11
			 14
			 680
			 1122
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

(constraint (= (next 0 0 10 1 true 465 ) 5))
(constraint (= (next 0 0 0 0 false 1926 ) 5))
(constraint (= (next 0 0 0 0 true 1013 ) 1))
(constraint (= (next 0 0 0 0 true 895 ) 4))
(constraint (= (next 0 0 4 0 true 1663 ) 6))
(constraint (= (next 0 1 8 1 true 4 ) 6))
(constraint (= (next 0 5 32 2 true 1868 ) 6))
(constraint (= (next 0 6 32 3 true 1146 ) 5))

(check-synth)
