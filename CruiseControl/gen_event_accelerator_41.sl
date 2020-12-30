(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 8
			 11
			 506
			 1392
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

(constraint (= (next 0 0 0 0 false 1279 ) 3))
(constraint (= (next 0 0 8 4 true 1960 ) 2))
(constraint (= (next 0 0 7 4 true 1635 ) 4))
(constraint (= (next 0 1 22 8 true 1851 ) 1))
(constraint (= (next 0 4 11 5 true 780 ) 5))
(constraint (= (next 0 5 19 9 true 845 ) 3))

(check-synth)
