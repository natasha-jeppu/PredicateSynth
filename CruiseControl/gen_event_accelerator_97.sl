(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 2
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
			 6
			 8
			 661
			 847
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

(constraint (= (next 0 0 0 0 false 1120 ) 6))
(constraint (= (next 0 0 0 0 false 1128 ) 2))
(constraint (= (next 0 0 1 5 true 55 ) 3))
(constraint (= (next 0 0 8 5 true 906 ) 1))
(constraint (= (next 0 0 8 6 true 136 ) 5))
(constraint (= (next 0 2 15 5 true 1107 ) 6))
(constraint (= (next 0 2 15 10 true 5 ) 4))
(constraint (= (next 0 3 15 5 true 1171 ) 5))
(constraint (= (next 0 9 8 4 true 1998 ) 1))

(check-synth)
