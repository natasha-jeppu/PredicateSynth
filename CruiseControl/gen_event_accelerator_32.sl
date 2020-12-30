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
			 5
			 14
			 15
			 480
			 1298
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

(constraint (= (next 0 0 4 5 true 1060 ) 3))
(constraint (= (next 0 1 13 4 true 1687 ) 4))
(constraint (= (next 0 3 16 5 true 1551 ) 6))
(constraint (= (next 0 5 31 9 true 1984 ) 6))
(constraint (= (next 0 5 37 10 true 931 ) 4))
(constraint (= (next 0 0 0 0 false 586 ) 3))
(constraint (= (next 0 0 6 4 true 1290 ) 7))

(check-synth)
