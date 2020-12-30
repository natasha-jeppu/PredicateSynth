(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 7
			 561
			 704
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

(constraint (= (next 0 0 5 4 true 1186 ) 7))
(constraint (= (next 0 0 1 5 true 151 ) 4))
(constraint (= (next 0 0 11 9 true 925 ) 7))
(constraint (= (next 0 0 7 5 true 54 ) 1))
(constraint (= (next 0 1 11 4 true 1204 ) 1))

(check-synth)
