(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 21
			 580
			 1232
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

(constraint (= (next 0 0 0 0 true 929 ) 1))
(constraint (= (next 0 0 0 0 true 794 ) 3))
(constraint (= (next 0 0 6 0 true 1875 ) 3))
(constraint (= (next 0 6 40 3 true 1580 ) 1))
(constraint (= (next 0 7 40 3 true 462 ) 1))
(constraint (= (next 0 9 40 3 true 1752 ) 3))

(check-synth)
