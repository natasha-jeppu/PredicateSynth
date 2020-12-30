(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 467
			 919
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

(constraint (= (next 0 0 0 0 true 1067 ) 6))
(constraint (= (next 0 0 7 0 true 1281 ) 5))
(constraint (= (next 0 0 6 0 true 633 ) 7))
(constraint (= (next 0 0 0 0 true 1453 ) 7))
(constraint (= (next 0 0 0 0 true 1403 ) 6))
(constraint (= (next 0 0 0 0 true 143 ) 5))
(constraint (= (next 0 0 0 0 true 865 ) 5))
(constraint (= (next 0 0 0 0 true 508 ) 5))

(check-synth)
