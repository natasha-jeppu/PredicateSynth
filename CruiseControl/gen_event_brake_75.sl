(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 4
			 9
			 13
			 353
			 1252
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

(constraint (= (next 1 0 0 0 true 1052 ) 3))
(constraint (= (next 1 0 0 0 true 1293 ) 1))
(constraint (= (next 1 0 2 0 true 933 ) 3))
(constraint (= (next 1 1 10 0 true 1839 ) 3))
(constraint (= (next 1 10 31 0 true 1145 ) 1))

(check-synth)
