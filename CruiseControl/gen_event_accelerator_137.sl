(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 7
			 10
			 639
			 1134
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

(constraint (= (next 0 0 6 4 true 1498 ) 7))
(constraint (= (next 0 0 1 5 true 100 ) 7))
(constraint (= (next 0 0 7 4 true 1517 ) 1))
(constraint (= (next 0 1 11 5 true 861 ) 4))
(constraint (= (next 0 2 13 5 true 933 ) 3))
(constraint (= (next 0 4 22 5 true 1894 ) 3))

(check-synth)
