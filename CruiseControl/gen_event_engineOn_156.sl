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
			 509
			 575
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

(constraint (= (next 0 0 0 0 true 413 ) 1))
(constraint (= (next 0 0 0 0 true 389 ) 6))
(constraint (= (next 0 0 0 0 true 250 ) 7))
(constraint (= (next 0 0 0 0 true 348 ) 3))
(constraint (= (next 0 0 0 0 true 1606 ) 6))
(constraint (= (next 0 1 10 1 true 446 ) 6))

(check-synth)
