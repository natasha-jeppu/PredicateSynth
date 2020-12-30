(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 4
				 5
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 7
			 380
			 1410
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

(constraint (= (next 0 0 6 0 true 1762 ) 5))
(constraint (= (next 0 0 5 0 true 1629 ) 4))
(constraint (= (next 0 3 11 1 true 787 ) 4))
(constraint (= (next 1 4 8 0 true 1350 ) 1))
(constraint (= (next 0 4 7 0 true 1524 ) 7))

(check-synth)
