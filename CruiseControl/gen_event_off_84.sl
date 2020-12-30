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
			 3
			 9
			 14
			 595
			 1082
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

(constraint (= (next 0 0 0 0 true 327 ) 3))
(constraint (= (next 1 0 0 0 true 476 ) 5))
(constraint (= (next 1 0 0 0 true 1522 ) 4))
(constraint (= (next 0 4 27 4 true 1864 ) 1))
(constraint (= (next 0 5 27 2 true 1050 ) 3))

(check-synth)
