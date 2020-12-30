(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 9
			 640
			 677
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

(constraint (= (next 0 0 0 0 false 83 ) 6))
(constraint (= (next 0 0 0 0 true 497 ) 1))
(constraint (= (next 0 0 0 0 true 1524 ) 6))
(constraint (= (next 0 0 8 1 true 217 ) 6))
(constraint (= (next 0 5 20 2 true 1046 ) 3))
(constraint (= (next 0 6 20 1 true 1640 ) 7))
(constraint (= (next 0 8 0 0 true 51 ) 6))
(constraint (= (next 0 9 8 1 true 360 ) 7))

(check-synth)
