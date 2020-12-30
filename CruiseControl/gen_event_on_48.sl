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
			 351
			 1233
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

(constraint (= (next 0 0 0 0 true 1230 ) 1))
(constraint (= (next 0 0 0 0 true 1124 ) 6))
(constraint (= (next 0 0 4 0 true 1223 ) 1))
(constraint (= (next 0 0 4 0 true 1048 ) 7))
(constraint (= (next 0 1 7 1 true 1661 ) 4))
(constraint (= (next 0 2 4 1 true 1521 ) 3))
(constraint (= (next 0 2 4 0 true 1254 ) 1))
(constraint (= (next 0 2 4 0 true 479 ) 5))
(constraint (= (next 0 3 4 0 true 1553 ) 5))

(check-synth)
