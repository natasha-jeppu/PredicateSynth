(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 5
			 7
			 24
			 28
			 358
			 973
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

(constraint (= (next 1 0 0 0 true 1153 ) 5))
(constraint (= (next 0 1 14 0 true 822 ) 2))
(constraint (= (next 0 0 8 4 true 1441 ) 3))
(constraint (= (next 0 4 41 9 true 730 ) 5))
(constraint (= (next 0 11 44 4 true 475 ) 6))
(constraint (= (next 0 16 60 9 true 1219 ) 5))

(check-synth)
