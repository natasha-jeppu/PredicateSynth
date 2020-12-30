(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
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
			 514
			 780
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

(constraint (= (next 1 0 0 0 true 451 ) 6))
(constraint (= (next 1 0 1 0 true 247 ) 4))
(constraint (= (next 1 0 1 0 true 10 ) 2))
(constraint (= (next 1 0 10 0 true 698 ) 3))
(constraint (= (next 1 1 2 0 true 1118 ) 7))
(constraint (= (next 2 1 0 0 true 839 ) 4))
(constraint (= (next 1 2 1 0 true 1296 ) 5))
(constraint (= (next 2 2 0 0 true 725 ) 7))

(check-synth)
