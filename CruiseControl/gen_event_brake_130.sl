(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 6
			 338
			 1327
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

(constraint (= (next 1 0 3 0 true 1548 ) 2))
(constraint (= (next 0 0 0 0 false 1508 ) 3))
(constraint (= (next 1 0 1 0 true 938 ) 3))
(constraint (= (next 1 2 14 0 true 1656 ) 7))
(constraint (= (next 2 2 9 0 true 986 ) 6))

(check-synth)
