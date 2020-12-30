(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 9
			 15
			 605
			 981
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

(constraint (= (next 0 0 0 0 true 1336 ) 5))
(constraint (= (next 0 4 40 3 true 127 ) 1))
(constraint (= (next 1 8 23 0 true 1826 ) 1))
(constraint (= (next 0 0 0 0 true 31 ) 4))
(constraint (= (next 0 0 0 0 true 1225 ) 3))
(constraint (= (next 0 0 0 0 true 1185 ) 5))
(constraint (= (next 0 0 0 0 true 371 ) 7))
(constraint (= (next 1 0 0 0 true 1029 ) 2))
(constraint (= (next 0 0 0 0 true 1551 ) 1))
(constraint (= (next 0 1 23 8 true 1126 ) 2))

(check-synth)
