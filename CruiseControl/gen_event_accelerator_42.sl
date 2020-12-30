(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 1
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 6
			 11
			 14
			 690
			 770
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

(constraint (= (next 0 0 4 5 true 910 ) 5))
(constraint (= (next 0 0 8 4 true 1997 ) 4))
(constraint (= (next 0 1 8 5 true 920 ) 1))
(constraint (= (next 0 1 9 6 true 189 ) 3))
(constraint (= (next 0 2 25 9 true 469 ) 5))
(constraint (= (next 0 5 32 7 true 135 ) 1))

(check-synth)
