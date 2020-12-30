(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 659
			 675
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

(constraint (= (next 0 0 0 0 true 1491 ) 2))
(constraint (= (next 0 0 0 0 true 29 ) 3))
(constraint (= (next 0 0 0 0 true 40 ) 3))
(constraint (= (next 0 0 0 0 true 924 ) 6))
(constraint (= (next 0 0 0 0 true 1494 ) 7))
(constraint (= (next 2 0 0 0 true 1389 ) 7))
(constraint (= (next 3 0 0 0 true 72 ) 7))
(constraint (= (next 4 0 0 0 true 191 ) 3))
(constraint (= (next 4 0 0 0 true 1088 ) 4))

(check-synth)
