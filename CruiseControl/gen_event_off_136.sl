(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 16
			 18
			 230
			 1592
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

(constraint (= (next 0 4 30 5 true 1929 ) 1))
(constraint (= (next 0 8 30 2 true 1349 ) 4))
(constraint (= (next 2 0 0 0 true 1656 ) 5))
(constraint (= (next 2 0 0 0 true 1408 ) 7))

(check-synth)
