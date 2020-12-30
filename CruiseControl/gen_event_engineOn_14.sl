(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 533
			 1067
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

(constraint (= (next 0 0 0 0 true 850 ) 1))
(constraint (= (next 0 0 7 4 true 1560 ) 4))
(constraint (= (next 0 1 4 0 true 584 ) 7))
(constraint (= (next 2 1 0 0 true 1858 ) 6))
(constraint (= (next 0 0 0 0 true 1124 ) 6))
(constraint (= (next 0 0 7 4 true 1161 ) 1))
(constraint (= (next 3 0 0 0 true 332 ) 7))

(check-synth)
