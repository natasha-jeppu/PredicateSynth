(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
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
			 23
			 400
			 720
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

(constraint (= (next 1 4 32 0 true 463 ) 7))
(constraint (= (next 2 5 26 0 true 1036 ) 3))
(constraint (= (next 3 6 14 0 true 383 ) 6))
(constraint (= (next 1 9 21 0 true 885 ) 6))
(constraint (= (next 1 11 26 0 true 282 ) 7))
(constraint (= (next 2 12 18 0 true 1268 ) 3))

(check-synth)
