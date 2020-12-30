(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 472
			 1217
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

(constraint (= (next 0 0 0 0 true 1780 ) 3))
(constraint (= (next 0 0 0 0 true 643 ) 5))
(constraint (= (next 0 0 0 0 true 1412 ) 1))
(constraint (= (next 0 0 0 0 true 1449 ) 7))
(constraint (= (next 1 0 0 0 true 1236 ) 4))
(constraint (= (next 0 0 0 0 true 1502 ) 1))

(check-synth)
