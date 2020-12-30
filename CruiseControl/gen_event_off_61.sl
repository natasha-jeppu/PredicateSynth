(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 7
			 12
			 568
			 1172
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

(constraint (= (next 0 0 0 0 false 1060 ) 3))
(constraint (= (next 0 0 0 0 true 1722 ) 5))
(constraint (= (next 0 0 0 0 true 573 ) 6))
(constraint (= (next 0 0 5 0 true 1474 ) 6))
(constraint (= (next 0 1 24 9 true 1692 ) 5))
(constraint (= (next 0 2 30 8 true 1003 ) 6))
(constraint (= (next 0 0 0 0 true 1670 ) 3))
(constraint (= (next 0 0 0 0 true 1304 ) 4))

(check-synth)
