(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
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
			 6
			 8
			 15
			 17
			 649
			 1027
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

(constraint (= (next 0 0 0 0 true 1745 ) 6))
(constraint (= (next 0 0 9 4 true 1208 ) 6))
(constraint (= (next 0 1 24 8 true 1770 ) 4))
(constraint (= (next 0 6 41 3 true 432 ) 3))
(constraint (= (next 0 7 41 3 true 879 ) 7))
(constraint (= (next 1 16 19 0 true 1405 ) 1))
(constraint (= (next 0 16 19 1 true 848 ) 5))
(constraint (= (next 0 20 21 4 true 163 ) 6))
(constraint (= (next 0 0 0 0 true 1964 ) 4))
(constraint (= (next 0 0 4 5 true 799 ) 3))
(constraint (= (next 0 0 5 4 true 84 ) 4))

(check-synth)
