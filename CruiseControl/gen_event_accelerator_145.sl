(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 8
			 19
			 22
			 722
			 1034
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

(constraint (= (next 0 0 2 5 true 606 ) 1))
(constraint (= (next 0 0 1 5 true 489 ) 6))
(constraint (= (next 0 0 12 9 true 1220 ) 7))
(constraint (= (next 0 0 7 4 true 1669 ) 6))
(constraint (= (next 0 0 18 8 true 1591 ) 4))
(constraint (= (next 0 1 24 10 true 72 ) 6))
(constraint (= (next 0 2 37 9 true 1798 ) 4))
(constraint (= (next 0 5 45 9 true 93 ) 6))
(constraint (= (next 0 8 55 9 true 1772 ) 2))

(check-synth)
