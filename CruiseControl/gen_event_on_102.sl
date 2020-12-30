(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 9
			 10
			 447
			 817
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

(constraint (= (next 0 0 0 0 false 727 ) 3))
(constraint (= (next 0 0 10 1 true 530 ) 3))
(constraint (= (next 0 3 11 1 true 1758 ) 5))
(constraint (= (next 0 5 3 0 true 714 ) 1))
(constraint (= (next 0 5 3 0 true 658 ) 6))
(constraint (= (next 0 5 5 0 true 400 ) 5))
(constraint (= (next 0 12 30 2 true 933 ) 2))

(check-synth)
