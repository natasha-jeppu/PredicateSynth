(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 15
			 16
			 674
			 959
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

(constraint (= (next 0 0 8 4 true 1958 ) 2))
(constraint (= (next 0 0 0 0 false 944 ) 1))
(constraint (= (next 0 0 0 0 true 1138 ) 3))
(constraint (= (next 0 0 10 4 true 53 ) 6))
(constraint (= (next 0 2 31 10 true 503 ) 3))
(constraint (= (next 0 3 38 9 true 492 ) 7))
(constraint (= (next 1 6 24 0 true 1627 ) 7))

(check-synth)
