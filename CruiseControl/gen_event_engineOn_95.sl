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
			 6
			 400
			 815
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

(constraint (= (next 0 0 0 0 true 1054 ) 4))
(constraint (= (next 1 3 5 0 true 614 ) 6))
(constraint (= (next 0 4 13 1 true 668 ) 4))
(constraint (= (next 0 5 13 1 true 495 ) 5))
(constraint (= (next 0 0 0 0 true 514 ) 5))
(constraint (= (next 0 0 0 0 true 1616 ) 3))
(constraint (= (next 0 0 0 0 true 743 ) 6))

(check-synth)
