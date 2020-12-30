(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 11
			 14
			 426
			 1532
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

(constraint (= (next 0 0 3 5 true 912 ) 6))
(constraint (= (next 0 0 18 9 true 1818 ) 6))
(constraint (= (next 0 2 33 9 true 1999 ) 7))
(constraint (= (next 0 0 7 4 true 1580 ) 4))
(constraint (= (next 0 0 5 5 true 1123 ) 5))

(check-synth)
