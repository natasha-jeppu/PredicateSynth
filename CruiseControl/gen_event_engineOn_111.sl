(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 674
			 1076
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

(constraint (= (next 0 0 0 0 true 1501 ) 2))
(constraint (= (next 0 0 0 0 true 1613 ) 6))
(constraint (= (next 0 2 10 1 true 1986 ) 5))
(constraint (= (next 0 4 0 0 true 469 ) 3))
(constraint (= (next 0 4 0 0 true 549 ) 3))
(constraint (= (next 0 4 0 0 true 200 ) 6))
(constraint (= (next 0 4 11 4 true 1212 ) 5))

(check-synth)
