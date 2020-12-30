(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 537
			 576
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

(constraint (= (next 0 0 0 0 true 1078 ) 3))
(constraint (= (next 0 0 0 0 true 145 ) 1))
(constraint (= (next 0 0 9 4 true 65 ) 7))
(constraint (= (next 1 0 8 0 true 133 ) 2))
(constraint (= (next 0 0 0 0 true 1195 ) 6))
(constraint (= (next 0 0 13 3 true 863 ) 2))
(constraint (= (next 0 0 0 0 true 246 ) 5))
(constraint (= (next 0 0 0 0 true 56 ) 6))
(constraint (= (next 0 0 0 0 true 1557 ) 1))
(constraint (= (next 0 0 2 5 true 31 ) 5))

(check-synth)
