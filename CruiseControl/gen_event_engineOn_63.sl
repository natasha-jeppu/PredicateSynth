(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 7
			 10
			 541
			 992
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

(constraint (= (next 0 0 0 0 true 609 ) 4))
(constraint (= (next 0 0 7 4 true 224 ) 6))
(constraint (= (next 0 1 16 1 true 1098 ) 7))
(constraint (= (next 0 4 17 1 true 1848 ) 7))
(constraint (= (next 0 6 17 4 true 937 ) 1))
(constraint (= (next 1 7 9 0 true 1637 ) 7))
(constraint (= (next 0 0 0 0 true 611 ) 1))
(constraint (= (next 0 14 13 0 true 969 ) 6))

(check-synth)
