(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 4
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 4
			 6
			 13
			 24
			 578
			 868
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

(constraint (= (next 0 0 0 0 true 628 ) 7))
(constraint (= (next 1 0 0 0 true 1837 ) 7))
(constraint (= (next 0 0 0 0 true 371 ) 6))
(constraint (= (next 0 0 10 4 true 932 ) 6))
(constraint (= (next 0 14 55 9 true 571 ) 4))

(check-synth)
