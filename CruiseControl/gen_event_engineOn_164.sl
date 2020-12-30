(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 9
			 637
			 843
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

(constraint (= (next 0 0 0 0 true 1662 ) 1))
(constraint (= (next 0 0 7 4 true 870 ) 1))
(constraint (= (next 0 0 7 0 true 112 ) 4))
(constraint (= (next 0 1 15 0 true 342 ) 3))
(constraint (= (next 0 2 13 0 true 1535 ) 5))
(constraint (= (next 0 4 13 4 true 537 ) 6))

(check-synth)
