(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 12
			 605
			 1008
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

(constraint (= (next 0 0 10 4 true 960 ) 5))
(constraint (= (next 0 1 14 3 true 1730 ) 5))
(constraint (= (next 0 1 14 3 true 74 ) 1))
(constraint (= (next 0 1 14 1 true 416 ) 5))
(constraint (= (next 0 1 13 0 true 1616 ) 3))
(constraint (= (next 0 0 7 4 true 536 ) 3))
(constraint (= (next 0 2 9 1 true 986 ) 6))
(constraint (= (next 0 3 11 5 true 778 ) 3))
(constraint (= (next 0 5 13 0 true 1958 ) 6))

(check-synth)
