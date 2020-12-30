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
			 3
			 7
			 13
			 577
			 934
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

(constraint (= (next 0 2 15 4 true 126 ) 7))
(constraint (= (next 1 2 10 0 true 694 ) 4))
(constraint (= (next 0 3 12 4 true 1722 ) 5))
(constraint (= (next 0 4 13 4 true 608 ) 1))
(constraint (= (next 0 5 13 1 true 360 ) 6))
(constraint (= (next 0 7 27 6 true 1305 ) 7))
(constraint (= (next 0 0 0 0 true 1092 ) 3))

(check-synth)
