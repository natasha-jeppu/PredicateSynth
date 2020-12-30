(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 542
			 1022
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

(constraint (= (next 0 0 0 0 true 1407 ) 5))
(constraint (= (next 0 0 0 0 true 476 ) 7))
(constraint (= (next 0 0 0 0 true 1874 ) 6))
(constraint (= (next 0 2 11 1 true 945 ) 7))
(constraint (= (next 0 3 10 1 true 490 ) 1))
(constraint (= (next 1 4 4 0 true 940 ) 1))

(check-synth)
