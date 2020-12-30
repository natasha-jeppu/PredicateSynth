(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 547
			 1216
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

(constraint (= (next 0 0 0 0 true 1394 ) 1))
(constraint (= (next 0 0 0 0 true 1337 ) 2))
(constraint (= (next 0 0 0 0 true 144 ) 6))
(constraint (= (next 0 0 0 0 true 1383 ) 3))
(constraint (= (next 0 0 0 0 true 1933 ) 6))
(constraint (= (next 0 0 0 0 true 1003 ) 3))
(constraint (= (next 0 0 0 0 true 1320 ) 5))

(check-synth)
