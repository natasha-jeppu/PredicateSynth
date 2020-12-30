(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 459
			 1228
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

(constraint (= (next 1 0 0 0 true 1482 ) 3))
(constraint (= (next 1 2 10 0 true 1125 ) 6))
(constraint (= (next 1 2 12 0 true 863 ) 4))
(constraint (= (next 1 4 7 0 true 1542 ) 7))
(constraint (= (next 2 5 0 0 true 1979 ) 6))
(constraint (= (next 1 6 15 0 true 681 ) 3))

(check-synth)
