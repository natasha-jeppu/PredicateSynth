(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 7
			 9
			 20
			 31
			 651
			 970
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

(constraint (= (next 0 0 6 4 true 1564 ) 5))
(constraint (= (next 0 1 15 8 true 34 ) 7))
(constraint (= (next 0 0 2 5 true 465 ) 4))
(constraint (= (next 0 1 23 8 true 1773 ) 5))
(constraint (= (next 0 3 36 10 true 655 ) 4))
(constraint (= (next 0 9 43 5 true 987 ) 5))
(constraint (= (next 0 12 46 8 true 269 ) 6))
(constraint (= (next 0 14 53 9 true 1239 ) 3))
(constraint (= (next 0 26 51 4 true 1743 ) 7))

(check-synth)
