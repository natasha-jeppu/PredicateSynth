(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 8
			 525
			 1077
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

(constraint (= (next 0 0 0 0 true 1091 ) 6))
(constraint (= (next 1 0 1 0 true 1370 ) 3))
(constraint (= (next 1 0 0 0 true 1084 ) 7))
(constraint (= (next 0 0 0 0 true 925 ) 1))
(constraint (= (next 0 0 0 0 true 208 ) 3))
(constraint (= (next 0 0 0 0 true 751 ) 7))
(constraint (= (next 1 0 0 0 true 432 ) 3))
(constraint (= (next 1 0 0 0 true 1322 ) 6))
(constraint (= (next 0 3 18 4 true 1787 ) 3))
(constraint (= (next 0 4 21 3 true 1802 ) 7))

(check-synth)
