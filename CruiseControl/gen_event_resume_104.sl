(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 620
			 1154
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

(constraint (= (next 2 0 0 0 true 1389 ) 7))
(constraint (= (next 3 0 0 0 true 876 ) 1))
(constraint (= (next 0 0 0 0 true 538 ) 4))
(constraint (= (next 0 0 0 0 true 479 ) 7))
(constraint (= (next 0 0 0 0 true 1997 ) 1))
(constraint (= (next 0 0 0 0 true 1647 ) 1))

(check-synth)
