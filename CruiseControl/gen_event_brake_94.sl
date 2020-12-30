(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 447
			 1269
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

(constraint (= (next 0 0 0 0 false 957 ) 3))
(constraint (= (next 1 0 0 0 true 1308 ) 5))
(constraint (= (next 1 0 0 0 true 1793 ) 3))
(constraint (= (next 2 0 0 0 true 1198 ) 7))
(constraint (= (next 3 0 0 0 true 1925 ) 2))
(constraint (= (next 0 0 0 0 false 994 ) 3))
(constraint (= (next 1 0 0 0 true 709 ) 3))

(check-synth)