(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 3
				 4
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 652
			 1072
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

(constraint (= (next 1 0 5 0 true 231 ) 7))
(constraint (= (next 2 0 1 0 true 1098 ) 3))
(constraint (= (next 3 0 0 0 true 742 ) 7))
(constraint (= (next 4 0 0 0 true 1981 ) 4))
(constraint (= (next 1 0 0 0 true 1308 ) 3))

(check-synth)
