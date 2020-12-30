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
			 5
			 6
			 9
			 14
			 726
			 864
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

(constraint (= (next 0 0 0 0 true 426 ) 3))
(constraint (= (next 0 3 17 2 true 547 ) 5))
(constraint (= (next 0 7 11 2 true 85 ) 6))
(constraint (= (next 0 9 19 0 true 1833 ) 1))
(constraint (= (next 0 11 20 1 true 1306 ) 1))
(constraint (= (next 0 12 14 3 true 207 ) 4))
(constraint (= (next 0 12 15 2 true 576 ) 3))

(check-synth)
