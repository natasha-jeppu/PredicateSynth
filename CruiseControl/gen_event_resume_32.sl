(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 10
			 581
			 1064
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

(constraint (= (next 0 0 0 0 false 1970 ) 3))
(constraint (= (next 0 0 0 0 true 1165 ) 6))
(constraint (= (next 0 0 7 0 true 1188 ) 4))
(constraint (= (next 0 0 6 0 true 1212 ) 5))
(constraint (= (next 0 1 6 0 true 333 ) 5))
(constraint (= (next 0 2 11 0 true 1547 ) 7))
(constraint (= (next 0 2 9 1 true 563 ) 4))
(constraint (= (next 0 2 9 1 true 259 ) 1))
(constraint (= (next 0 7 33 0 true 1294 ) 7))
(constraint (= (next 0 9 24 0 true 459 ) 3))
(constraint (= (next 0 0 0 0 true 1710 ) 7))

(check-synth)
