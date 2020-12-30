(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 5
			 10
			 15
			 768
			 926
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

(constraint (= (next 0 0 0 0 true 1093 ) 7))
(constraint (= (next 1 0 0 0 true 1993 ) 5))
(constraint (= (next 1 4 25 0 true 1901 ) 4))
(constraint (= (next 1 4 24 0 true 354 ) 4))
(constraint (= (next 1 4 23 0 true 211 ) 4))
(constraint (= (next 1 5 19 0 true 1293 ) 4))
(constraint (= (next 1 6 13 0 true 1738 ) 4))
(constraint (= (next 1 6 11 0 true 420 ) 4))
(constraint (= (next 1 6 11 0 true 231 ) 6))
(constraint (= (next 0 11 26 2 true 21 ) 1))

(check-synth)
