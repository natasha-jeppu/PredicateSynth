(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 8
			 11
			 19
			 614
			 879
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

(constraint (= (next 0 0 1 5 true 355 ) 4))
(constraint (= (next 0 0 8 9 true 554 ) 3))
(constraint (= (next 0 4 22 4 true 1683 ) 5))
(constraint (= (next 0 8 22 5 true 541 ) 5))
(constraint (= (next 0 11 23 4 true 1828 ) 3))
(constraint (= (next 0 14 29 7 true 425 ) 4))

(check-synth)
