(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 13
			 15
			 525
			 1029
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

(constraint (= (next 0 0 0 0 false 799 ) 3))
(constraint (= (next 0 0 2 5 true 529 ) 6))
(constraint (= (next 0 0 8 9 true 636 ) 3))
(constraint (= (next 0 0 22 9 true 1517 ) 6))
(constraint (= (next 0 2 35 9 true 1666 ) 3))

(check-synth)
