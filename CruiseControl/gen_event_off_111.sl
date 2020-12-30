(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 5
			 7
			 708
			 950
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

(constraint (= (next 0 0 0 0 false 1894 ) 3))
(constraint (= (next 0 0 7 4 true 793 ) 6))
(constraint (= (next 0 2 10 1 true 272 ) 5))
(constraint (= (next 0 3 9 0 true 1737 ) 6))
(constraint (= (next 0 3 12 5 true 645 ) 7))
(constraint (= (next 2 4 0 0 true 1264 ) 6))
(constraint (= (next 0 4 11 3 true 44 ) 1))

(check-synth)
