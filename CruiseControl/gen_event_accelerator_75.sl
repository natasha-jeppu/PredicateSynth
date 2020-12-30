(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 7
			 12
			 17
			 456
			 767
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

(constraint (= (next 0 0 4 5 true 1022 ) 7))
(constraint (= (next 0 0 4 5 true 985 ) 6))
(constraint (= (next 0 0 16 9 true 1446 ) 7))
(constraint (= (next 0 1 9 5 true 45 ) 5))
(constraint (= (next 0 3 24 8 true 799 ) 1))
(constraint (= (next 0 6 28 7 true 691 ) 5))
(constraint (= (next 0 12 33 7 true 382 ) 1))

(check-synth)
