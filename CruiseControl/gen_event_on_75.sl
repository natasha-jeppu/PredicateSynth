(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 15
			 484
			 934
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

(constraint (= (next 0 0 0 0 true 1196 ) 4))
(constraint (= (next 0 0 0 0 true 1366 ) 1))
(constraint (= (next 0 0 0 0 true 627 ) 1))
(constraint (= (next 0 0 0 0 true 1666 ) 1))
(constraint (= (next 0 0 0 0 true 547 ) 5))
(constraint (= (next 0 3 24 2 true 764 ) 1))
(constraint (= (next 0 4 24 2 true 986 ) 4))
(constraint (= (next 0 5 24 2 true 1577 ) 3))
(constraint (= (next 0 11 31 2 true 851 ) 4))
(constraint (= (next 0 13 33 3 true 627 ) 1))

(check-synth)
