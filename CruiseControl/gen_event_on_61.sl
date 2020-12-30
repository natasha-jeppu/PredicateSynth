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
			 14
			 18
			 628
			 1038
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

(constraint (= (next 0 0 6 0 true 1236 ) 5))
(constraint (= (next 0 4 40 3 true 430 ) 3))
(constraint (= (next 0 5 40 3 true 660 ) 7))
(constraint (= (next 0 9 23 2 true 1717 ) 2))
(constraint (= (next 0 0 0 0 false 610 ) 3))
(constraint (= (next 0 0 0 0 true 1989 ) 4))
(constraint (= (next 0 0 0 0 true 1367 ) 4))
(constraint (= (next 0 0 0 0 true 295 ) 6))

(check-synth)
