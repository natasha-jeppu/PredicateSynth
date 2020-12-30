(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 13
			 17
			 667
			 1041
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

(constraint (= (next 0 0 10 4 true 1866 ) 1))
(constraint (= (next 0 0 10 1 true 60 ) 2))
(constraint (= (next 0 0 0 0 false 1570 ) 3))
(constraint (= (next 0 0 0 0 true 1540 ) 6))
(constraint (= (next 0 2 20 4 true 408 ) 6))
(constraint (= (next 0 3 30 8 true 807 ) 5))
(constraint (= (next 0 3 32 8 true 544 ) 1))
(constraint (= (next 0 8 31 2 true 1533 ) 2))

(check-synth)
