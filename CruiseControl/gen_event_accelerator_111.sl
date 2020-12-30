(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 6
			 7
			 688
			 744
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

(constraint (= (next 0 0 0 0 false 283 ) 3))
(constraint (= (next 0 0 0 0 false 132 ) 1))
(constraint (= (next 0 0 3 5 true 666 ) 5))
(constraint (= (next 0 0 15 9 true 1154 ) 4))
(constraint (= (next 0 3 10 5 true 318 ) 5))
(constraint (= (next 0 4 0 5 true 58 ) 1))
(constraint (= (next 0 4 7 4 true 1976 ) 3))
(constraint (= (next 0 5 17 5 true 1363 ) 7))

(check-synth)
