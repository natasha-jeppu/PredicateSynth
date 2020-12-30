(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 7
			 16
			 19
			 584
			 888
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

(constraint (= (next 0 0 7 4 true 1837 ) 6))
(constraint (= (next 0 0 14 9 true 618 ) 4))
(constraint (= (next 0 6 32 7 true 744 ) 5))
(constraint (= (next 0 0 1 5 true 368 ) 7))
(constraint (= (next 0 0 8 4 true 1749 ) 6))
(constraint (= (next 0 0 11 9 true 408 ) 3))
(constraint (= (next 0 4 40 10 true 495 ) 4))
(constraint (= (next 0 5 40 5 true 884 ) 7))

(check-synth)
