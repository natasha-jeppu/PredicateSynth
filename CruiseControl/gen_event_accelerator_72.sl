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
			 7
			 10
			 15
			 790
			 900
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

(constraint (= (next 0 0 1 5 true 154 ) 6))
(constraint (= (next 0 0 16 9 true 1686 ) 6))
(constraint (= (next 0 0 16 10 true 190 ) 7))
(constraint (= (next 0 3 10 6 true 288 ) 4))
(constraint (= (next 0 4 15 5 true 1190 ) 6))

(check-synth)
