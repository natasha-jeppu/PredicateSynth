(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 10
			 579
			 670
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

(constraint (= (next 0 0 0 0 true 714 ) 5))
(constraint (= (next 0 0 0 0 true 452 ) 5))
(constraint (= (next 0 0 0 0 true 874 ) 3))
(constraint (= (next 0 0 0 0 true 19 ) 6))
(constraint (= (next 0 4 23 6 true 287 ) 7))
(constraint (= (next 1 6 15 0 true 1676 ) 7))

(check-synth)
