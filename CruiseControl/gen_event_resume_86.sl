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
			 4
			 19
			 23
			 701
			 965
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

(constraint (= (next 0 0 0 0 false 1153 ) 3))
(constraint (= (next 0 0 0 0 true 159 ) 7))
(constraint (= (next 1 0 0 0 true 1685 ) 6))
(constraint (= (next 0 0 6 4 true 106 ) 3))
(constraint (= (next 0 4 33 6 true 1756 ) 3))
(constraint (= (next 0 7 46 9 true 1383 ) 4))
(constraint (= (next 0 8 50 9 true 514 ) 3))

(check-synth)
