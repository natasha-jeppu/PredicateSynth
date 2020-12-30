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
			 3
			 6
			 7
			 458
			 1160
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

(constraint (= (next 1 1 12 0 true 1186 ) 6))
(constraint (= (next 1 7 15 0 true 1346 ) 5))
(constraint (= (next 2 8 0 0 true 813 ) 1))
(constraint (= (next 1 9 3 0 true 1808 ) 7))
(constraint (= (next 2 9 0 0 true 647 ) 5))

(check-synth)
