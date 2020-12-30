(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 4
			 9
			 10
			 482
			 1209
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

(constraint (= (next 0 0 0 0 true 1301 ) 1))
(constraint (= (next 0 0 0 0 true 1124 ) 1))
(constraint (= (next 1 0 0 0 true 1516 ) 5))
(constraint (= (next 0 0 10 4 true 1909 ) 4))
(constraint (= (next 0 5 27 2 true 217 ) 7))
(constraint (= (next 1 6 21 0 true 1344 ) 7))
(constraint (= (next 2 7 15 0 true 832 ) 3))
(constraint (= (next 2 7 10 0 true 1108 ) 1))
(constraint (= (next 2 8 0 0 true 1531 ) 1))

(check-synth)
