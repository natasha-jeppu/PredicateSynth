(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 7
			 11
			 697
			 818
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

(constraint (= (next 0 0 3 5 true 849 ) 5))
(constraint (= (next 0 0 11 8 true 62 ) 7))
(constraint (= (next 0 1 5 5 true 124 ) 4))
(constraint (= (next 0 1 10 5 true 988 ) 1))
(constraint (= (next 0 3 13 4 true 1976 ) 5))
(constraint (= (next 0 5 23 8 true 909 ) 7))

(check-synth)
