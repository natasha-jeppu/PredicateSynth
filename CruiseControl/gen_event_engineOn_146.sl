(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 10
			 14
			 530
			 1125
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

(constraint (= (next 0 0 0 0 true 1194 ) 5))
(constraint (= (next 0 0 0 0 true 1325 ) 5))
(constraint (= (next 0 0 0 0 true 1456 ) 7))
(constraint (= (next 0 0 5 0 true 348 ) 5))
(constraint (= (next 0 1 6 1 true 1955 ) 5))
(constraint (= (next 0 1 5 0 true 464 ) 4))
(constraint (= (next 0 2 23 9 true 1326 ) 6))

(check-synth)
