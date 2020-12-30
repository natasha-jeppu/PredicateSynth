(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 9
			 546
			 992
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

(constraint (= (next 0 0 1 0 true 1117 ) 1))
(constraint (= (next 0 0 10 4 true 331 ) 1))
(constraint (= (next 0 1 10 1 true 1298 ) 4))
(constraint (= (next 0 1 10 1 true 1557 ) 4))
(constraint (= (next 0 1 10 1 true 290 ) 3))
(constraint (= (next 0 5 15 0 true 1358 ) 5))

(check-synth)
