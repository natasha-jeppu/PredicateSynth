(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 15
			 18
			 596
			 1096
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

(constraint (= (next 0 0 7 4 true 1771 ) 2))
(constraint (= (next 0 0 5 4 true 1235 ) 4))
(constraint (= (next 0 1 21 7 true 1050 ) 3))
(constraint (= (next 0 5 38 10 true 328 ) 4))

(check-synth)
