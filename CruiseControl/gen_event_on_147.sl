(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 6
			 298
			 366
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

(constraint (= (next 0 1 10 1 true 224 ) 3))
(constraint (= (next 0 2 10 1 true 60 ) 7))
(constraint (= (next 0 2 6 0 true 750 ) 5))
(constraint (= (next 0 3 4 0 true 622 ) 5))
(constraint (= (next 0 3 3 0 true 47 ) 5))
(constraint (= (next 0 3 2 0 true 495 ) 7))

(check-synth)
