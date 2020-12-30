(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 6
			 12
			 577
			 631
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

(constraint (= (next 1 0 0 0 true 141 ) 6))
(constraint (= (next 1 4 12 0 true 1677 ) 3))
(constraint (= (next 1 5 11 0 true 796 ) 6))
(constraint (= (next 1 5 15 0 true 94 ) 1))
(constraint (= (next 1 7 11 0 true 1044 ) 4))
(constraint (= (next 1 11 19 0 true 326 ) 3))
(constraint (= (next 2 12 14 0 true 337 ) 4))

(check-synth)
