(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 11
			 12
			 17
			 532
			 1367
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

(constraint (= (next 1 9 34 0 true 1321 ) 7))
(constraint (= (next 2 11 18 0 true 1745 ) 4))
(constraint (= (next 0 17 18 0 true 1977 ) 5))
(constraint (= (next 0 17 17 0 true 605 ) 7))
(constraint (= (next 1 0 0 0 true 1186 ) 6))

(check-synth)
