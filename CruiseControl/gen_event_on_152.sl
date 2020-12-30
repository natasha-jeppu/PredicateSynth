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
			 521
			 653
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

(constraint (= (next 0 0 0 0 true 771 ) 7))
(constraint (= (next 0 0 0 0 true 520 ) 6))
(constraint (= (next 0 1 2 0 true 630 ) 1))
(constraint (= (next 0 1 2 0 true 483 ) 1))
(constraint (= (next 0 1 2 0 true 42 ) 1))
(constraint (= (next 0 1 2 0 true 1505 ) 6))
(constraint (= (next 0 3 4 0 true 1463 ) 5))
(constraint (= (next 0 3 3 0 true 235 ) 6))
(constraint (= (next 0 4 5 0 true 228 ) 6))

(check-synth)
