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
			 3
			 4
			 8
			 502
			 969
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

(constraint (= (next 0 0 0 0 true 423 ) 6))
(constraint (= (next 0 0 0 0 true 440 ) 6))
(constraint (= (next 0 0 0 0 true 618 ) 4))
(constraint (= (next 0 0 0 0 true 530 ) 1))
(constraint (= (next 0 0 0 0 true 1235 ) 6))
(constraint (= (next 0 0 7 0 true 1783 ) 1))
(constraint (= (next 0 0 6 1 true 1336 ) 4))
(constraint (= (next 0 1 7 0 true 1707 ) 6))
(constraint (= (next 0 3 15 1 true 1195 ) 6))
(constraint (= (next 0 7 26 2 true 497 ) 7))
(constraint (= (next 0 9 15 1 true 1029 ) 1))
(constraint (= (next 0 9 15 1 true 440 ) 5))

(check-synth)
