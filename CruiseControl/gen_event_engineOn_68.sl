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
			 5
			 13
			 14
			 319
			 1488
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

(constraint (= (next 0 0 0 0 true 1877 ) 4))
(constraint (= (next 0 7 17 4 true 1092 ) 3))
(constraint (= (next 0 8 20 3 true 1237 ) 5))
(constraint (= (next 0 10 31 7 true 1653 ) 7))
(constraint (= (next 0 0 0 0 true 1583 ) 5))

(check-synth)
