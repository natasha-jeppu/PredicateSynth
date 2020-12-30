(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 4
			 7
			 630
			 1072
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

(constraint (= (next 0 0 0 0 true 1139 ) 3))
(constraint (= (next 0 1 11 1 true 1594 ) 4))
(constraint (= (next 0 2 10 1 true 1587 ) 3))
(constraint (= (next 0 3 10 1 true 209 ) 1))
(constraint (= (next 0 3 10 1 true 1281 ) 7))
(constraint (= (next 0 4 4 0 true 157 ) 5))
(constraint (= (next 0 4 3 0 true 1538 ) 6))

(check-synth)
