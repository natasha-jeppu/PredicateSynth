(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 2
				 3
				 4
				 5
				 6
				 7
				 (ite StartBool Start Start)))

	(Var Int (
			 0
			 1
			 2
			 3
			 5
			 7
			 8
			 494
			 854
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

(constraint (= (next 0 0 4 5 true 946 ) 6))
(constraint (= (next 0 0 11 9 true 729 ) 4))
(constraint (= (next 0 1 19 5 true 672 ) 2))
(constraint (= (next 0 0 0 0 false 961 ) 3))
(constraint (= (next 0 0 3 5 true 714 ) 3))
(constraint (= (next 0 0 16 9 true 1169 ) 7))
(constraint (= (next 0 0 4 5 true 839 ) 4))
(constraint (= (next 0 0 5 4 true 1264 ) 6))
(constraint (= (next 0 0 7 9 true 139 ) 5))
(constraint (= (next 0 2 16 4 true 1860 ) 7))
(constraint (= (next 0 0 0 0 false 105 ) 3))

(check-synth)
