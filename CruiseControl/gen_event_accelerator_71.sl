(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 12
			 14
			 584
			 797
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

(constraint (= (next 0 0 1 5 true 232 ) 1))
(constraint (= (next 0 0 1 5 true 483 ) 3))
(constraint (= (next 0 0 10 5 true 837 ) 7))
(constraint (= (next 0 1 11 5 true 741 ) 1))
(constraint (= (next 0 0 7 3 true 1648 ) 6))
(constraint (= (next 0 0 9 8 true 303 ) 3))
(constraint (= (next 0 6 20 5 true 1096 ) 6))
(constraint (= (next 0 7 33 8 true 1698 ) 6))
(constraint (= (next 0 7 33 10 true 136 ) 1))

(check-synth)
