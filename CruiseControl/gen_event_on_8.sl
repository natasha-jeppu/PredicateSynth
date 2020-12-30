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
			 4
			 9
			 11
			 19
			 563
			 890
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

(constraint (= (next 0 4 34 3 true 1156 ) 7))
(constraint (= (next 0 6 14 1 true 417 ) 6))
(constraint (= (next 0 8 24 2 true 1537 ) 7))
(constraint (= (next 0 11 27 2 true 206 ) 3))
(constraint (= (next 0 13 8 1 true 581 ) 4))
(constraint (= (next 0 14 8 1 true 1445 ) 3))

(check-synth)
