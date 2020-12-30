(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 5
				 6
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 12
			 595
			 935
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

(constraint (= (next 0 0 0 0 true 584 ) 4))
(constraint (= (next 0 0 0 0 true 575 ) 6))
(constraint (= (next 0 0 0 0 true 1936 ) 5))
(constraint (= (next 0 0 0 0 true 1325 ) 6))
(constraint (= (next 0 0 0 0 true 249 ) 6))
(constraint (= (next 1 0 0 0 true 1551 ) 6))
(constraint (= (next 0 0 10 4 true 763 ) 6))
(constraint (= (next 0 3 35 9 true 495 ) 5))

(check-synth)
