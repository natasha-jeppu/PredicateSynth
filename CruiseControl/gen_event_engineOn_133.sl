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
			 664
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

(constraint (= (next 0 0 0 0 true 1672 ) 6))
(constraint (= (next 1 0 1 0 true 25 ) 2))
(constraint (= (next 0 0 0 0 true 447 ) 2))
(constraint (= (next 0 0 0 0 true 591 ) 7))
(constraint (= (next 1 2 4 0 true 885 ) 4))
(constraint (= (next 0 2 5 2 true 604 ) 3))
(constraint (= (next 0 3 6 2 true 423 ) 5))

(check-synth)
