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
			 4
			 9
			 10
			 598
			 1157
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

(constraint (= (next 0 0 0 0 true 1482 ) 7))
(constraint (= (next 0 0 0 0 true 1526 ) 3))
(constraint (= (next 0 0 7 1 true 237 ) 3))
(constraint (= (next 0 2 10 0 true 1798 ) 6))
(constraint (= (next 0 7 27 0 true 1270 ) 1))
(constraint (= (next 0 10 11 2 true 629 ) 1))

(check-synth)
