(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
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
			 6
			 11
			 735
			 1130
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

(constraint (= (next 0 0 1 5 true 220 ) 5))
(constraint (= (next 0 0 0 0 false 197 ) 2))
(constraint (= (next 0 0 5 4 true 1242 ) 4))
(constraint (= (next 0 1 22 8 true 1919 ) 2))
(constraint (= (next 0 0 4 5 true 1039 ) 7))
(constraint (= (next 0 0 7 4 true 1911 ) 3))
(constraint (= (next 0 1 24 8 true 1886 ) 6))
(constraint (= (next 0 2 28 10 true 626 ) 5))

(check-synth)
