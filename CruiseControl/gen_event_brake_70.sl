(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 511
			 1062
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

(constraint (= (next 1 2 9 0 true 1632 ) 7))
(constraint (= (next 2 2 6 0 true 618 ) 4))
(constraint (= (next 1 2 5 0 true 986 ) 7))
(constraint (= (next 2 2 0 0 true 1672 ) 6))
(constraint (= (next 1 2 0 0 true 1037 ) 3))
(constraint (= (next 1 4 9 0 true 427 ) 2))

(check-synth)
