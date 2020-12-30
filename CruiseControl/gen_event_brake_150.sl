(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 15
			 375
			 1006
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

(constraint (= (next 1 1 16 0 true 933 ) 2))
(constraint (= (next 1 3 14 0 true 1491 ) 4))
(constraint (= (next 1 5 20 0 true 805 ) 5))
(constraint (= (next 2 6 12 0 true 540 ) 6))
(constraint (= (next 1 7 13 0 true 1260 ) 3))

(check-synth)
