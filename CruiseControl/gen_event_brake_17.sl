(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 8
			 477
			 1051
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

(constraint (= (next 1 0 3 0 true 1446 ) 3))
(constraint (= (next 2 0 0 0 true 829 ) 1))
(constraint (= (next 1 0 0 0 true 783 ) 4))
(constraint (= (next 1 0 0 0 true 180 ) 3))
(constraint (= (next 1 2 18 0 true 1282 ) 7))
(constraint (= (next 2 3 11 0 true 1360 ) 6))
(constraint (= (next 1 5 16 0 true 1474 ) 1))

(check-synth)
