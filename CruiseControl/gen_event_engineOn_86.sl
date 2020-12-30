(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 23
			 26
			 483
			 1042
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

(constraint (= (next 0 0 0 0 true 1564 ) 4))
(constraint (= (next 0 0 0 0 true 352 ) 6))
(constraint (= (next 0 0 10 4 true 1509 ) 5))
(constraint (= (next 0 2 27 6 true 1318 ) 4))
(constraint (= (next 0 5 36 5 true 1102 ) 6))
(constraint (= (next 0 8 51 9 true 450 ) 3))

(check-synth)
