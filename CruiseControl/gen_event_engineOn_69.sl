(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 8
			 13
			 584
			 909
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

(constraint (= (next 0 0 0 0 true 1720 ) 4))
(constraint (= (next 0 0 0 0 true 109 ) 7))
(constraint (= (next 0 0 19 9 true 319 ) 1))
(constraint (= (next 0 2 18 1 true 1557 ) 5))
(constraint (= (next 1 4 10 0 true 819 ) 5))
(constraint (= (next 0 5 15 4 true 669 ) 7))
(constraint (= (next 0 11 20 1 true 509 ) 7))
(constraint (= (next 1 12 16 0 true 907 ) 7))
(constraint (= (next 0 13 16 2 true 1568 ) 5))

(check-synth)
