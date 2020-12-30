(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 644
			 1028
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

(constraint (= (next 0 0 0 0 true 1637 ) 1))
(constraint (= (next 0 0 7 4 true 1155 ) 5))
(constraint (= (next 0 0 7 4 true 180 ) 1))
(constraint (= (next 0 0 6 0 true 359 ) 1))
(constraint (= (next 1 0 0 0 true 1801 ) 1))
(constraint (= (next 0 0 0 0 true 1500 ) 1))
(constraint (= (next 0 0 0 0 true 334 ) 4))
(constraint (= (next 0 0 0 0 true 1256 ) 6))

(check-synth)
