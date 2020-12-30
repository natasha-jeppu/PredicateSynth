(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 613
			 989
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

(constraint (= (next 0 0 1 0 true 1887 ) 7))
(constraint (= (next 0 0 0 0 true 1161 ) 5))
(constraint (= (next 0 0 0 0 true 1865 ) 5))
(constraint (= (next 0 0 0 0 true 1211 ) 4))
(constraint (= (next 0 0 8 4 true 884 ) 3))
(constraint (= (next 0 1 4 0 true 25 ) 7))
(constraint (= (next 1 2 0 0 true 583 ) 5))
(constraint (= (next 1 2 0 0 true 694 ) 5))
(constraint (= (next 1 2 0 0 true 587 ) 7))

(check-synth)
