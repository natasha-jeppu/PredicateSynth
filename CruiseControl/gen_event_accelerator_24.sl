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
			 7
			 14
			 15
			 527
			 1119
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

(constraint (= (next 0 0 3 5 true 740 ) 2))
(constraint (= (next 0 0 4 5 true 1120 ) 1))
(constraint (= (next 0 0 12 4 true 1933 ) 2))
(constraint (= (next 0 0 4 5 true 1104 ) 6))
(constraint (= (next 0 0 8 9 true 298 ) 4))
(constraint (= (next 0 1 31 9 true 1550 ) 6))
(constraint (= (next 0 3 39 9 true 1087 ) 3))

(check-synth)
