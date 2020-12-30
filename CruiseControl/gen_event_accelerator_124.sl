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
			 6
			 11
			 13
			 556
			 720
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

(constraint (= (next 0 0 1 5 true 130 ) 4))
(constraint (= (next 0 0 8 5 true 405 ) 2))
(constraint (= (next 0 0 6 4 true 1346 ) 6))
(constraint (= (next 0 0 6 9 true 97 ) 4))
(constraint (= (next 0 1 17 5 true 567 ) 1))
(constraint (= (next 0 3 22 6 true 1092 ) 6))
(constraint (= (next 0 4 32 9 true 1400 ) 3))

(check-synth)
