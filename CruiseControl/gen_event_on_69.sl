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
			 4
			 7
			 17
			 603
			 721
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

(constraint (= (next 0 1 19 1 true 1019 ) 5))
(constraint (= (next 0 6 15 1 true 416 ) 1))
(constraint (= (next 0 6 15 1 true 598 ) 1))
(constraint (= (next 0 7 15 1 true 1768 ) 5))
(constraint (= (next 0 10 19 1 true 488 ) 6))
(constraint (= (next 0 11 20 1 true 37 ) 3))

(check-synth)
