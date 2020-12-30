(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 6
			 7
			 21
			 27
			 480
			 1088
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

(constraint (= (next 0 0 5 4 true 1095 ) 3))
(constraint (= (next 0 3 17 4 true 1356 ) 7))
(constraint (= (next 0 4 14 5 true 892 ) 6))
(constraint (= (next 0 5 19 9 true 701 ) 6))
(constraint (= (next 0 6 31 9 true 1659 ) 6))
(constraint (= (next 0 7 38 10 true 1025 ) 5))
(constraint (= (next 0 12 59 9 true 1448 ) 5))
(constraint (= (next 0 19 57 4 true 1501 ) 1))
(constraint (= (next 0 0 1 5 true 112 ) 5))

(check-synth)
