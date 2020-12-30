(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 468
			 1499
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

(constraint (= (next 1 0 2 0 true 1493 ) 4))
(constraint (= (next 1 0 0 0 true 790 ) 7))
(constraint (= (next 2 0 0 0 true 1951 ) 4))
(constraint (= (next 1 0 7 0 true 1373 ) 6))
(constraint (= (next 1 2 6 0 true 1890 ) 3))

(check-synth)
