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
			 3
			 4
			 9
			 597
			 1180
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

(constraint (= (next 0 0 0 0 true 1062 ) 7))
(constraint (= (next 1 0 0 0 true 566 ) 5))
(constraint (= (next 0 0 10 4 true 1931 ) 1))
(constraint (= (next 0 1 10 1 true 1391 ) 5))
(constraint (= (next 1 6 10 0 true 1385 ) 5))
(constraint (= (next 0 8 18 3 true 1841 ) 6))
(constraint (= (next 0 10 26 0 true 178 ) 6))
(constraint (= (next 0 0 0 0 true 1082 ) 7))

(check-synth)
