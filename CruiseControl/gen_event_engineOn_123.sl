(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 552
			 1113
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

(constraint (= (next 0 0 0 0 true 1114 ) 3))
(constraint (= (next 0 0 0 0 true 812 ) 2))
(constraint (= (next 0 0 0 0 true 1049 ) 7))
(constraint (= (next 1 1 3 0 true 821 ) 6))
(constraint (= (next 0 1 6 1 true 1892 ) 1))
(constraint (= (next 0 1 6 0 true 1760 ) 3))
(constraint (= (next 0 2 5 0 true 1011 ) 3))
(constraint (= (next 0 2 6 1 true 423 ) 3))
(constraint (= (next 0 2 5 0 true 290 ) 7))
(constraint (= (next 1 2 0 0 true 1594 ) 7))
(constraint (= (next 0 2 0 0 true 1599 ) 4))
(constraint (= (next 1 2 0 0 true 1687 ) 4))
(constraint (= (next 0 0 0 0 true 411 ) 7))

(check-synth)
