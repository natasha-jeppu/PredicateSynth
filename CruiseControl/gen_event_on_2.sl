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
			 4
			 6
			 619
			 1361
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

(constraint (= (next 0 0 0 0 true 1860 ) 3))
(constraint (= (next 0 0 0 0 true 1953 ) 2))
(constraint (= (next 0 0 9 1 true 1720 ) 1))
(constraint (= (next 0 1 9 1 true 1785 ) 4))
(constraint (= (next 0 1 9 1 true 1050 ) 3))
(constraint (= (next 0 2 9 1 true 769 ) 3))
(constraint (= (next 0 3 9 1 true 389 ) 5))

(check-synth)
