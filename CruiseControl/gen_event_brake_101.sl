(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 5
			 7
			 657
			 1163
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

(constraint (= (next 1 0 0 0 true 551 ) 1))
(constraint (= (next 1 2 9 0 true 434 ) 6))
(constraint (= (next 1 4 13 0 true 1272 ) 1))
(constraint (= (next 1 5 7 0 true 1938 ) 1))
(constraint (= (next 1 7 8 0 true 1618 ) 5))

(check-synth)
