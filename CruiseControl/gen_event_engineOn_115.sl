(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 482
			 1130
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

(constraint (= (next 0 0 0 0 true 1252 ) 3))
(constraint (= (next 0 0 0 0 true 1072 ) 4))
(constraint (= (next 0 0 0 0 true 1387 ) 6))
(constraint (= (next 0 0 0 0 true 781 ) 3))
(constraint (= (next 0 0 0 0 true 1179 ) 1))
(constraint (= (next 0 0 0 0 true 735 ) 2))
(constraint (= (next 0 0 0 0 true 527 ) 6))
(constraint (= (next 0 0 0 0 true 345 ) 1))
(constraint (= (next 0 0 0 0 true 1079 ) 4))
(constraint (= (next 0 0 0 0 true 1536 ) 4))
(constraint (= (next 2 0 0 0 true 1680 ) 6))

(check-synth)
