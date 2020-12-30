(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 10
			 14
			 440
			 493
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

(constraint (= (next 0 0 9 4 true 1360 ) 6))
(constraint (= (next 0 0 14 9 true 122 ) 1))
(constraint (= (next 0 3 21 5 true 225 ) 5))
(constraint (= (next 0 3 22 5 true 374 ) 3))
(constraint (= (next 0 10 32 0 true 629 ) 6))
(constraint (= (next 0 0 0 0 true 855 ) 3))
(constraint (= (next 0 0 5 4 true 37 ) 4))
(constraint (= (next 0 0 11 3 true 343 ) 3))

(check-synth)
