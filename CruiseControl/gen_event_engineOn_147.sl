(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 451
			 838
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

(constraint (= (next 0 0 0 0 true 1050 ) 6))
(constraint (= (next 1 1 10 0 true 1625 ) 1))
(constraint (= (next 0 1 10 1 true 696 ) 4))
(constraint (= (next 0 2 10 0 true 326 ) 5))
(constraint (= (next 0 2 6 0 true 1115 ) 7))
(constraint (= (next 0 3 3 0 true 501 ) 4))
(constraint (= (next 0 3 1 0 true 551 ) 4))

(check-synth)
