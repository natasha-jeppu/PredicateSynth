(set-logic LIA)
(synth-fun next ((brake Int) (distance Int) (speed Int) (throttle Int) (ignition Bool) (time Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
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
			 14
			 18
			 485
			 826
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

(constraint (= (next 0 0 0 0 true 307 ) 5))
(constraint (= (next 0 0 0 0 true 672 ) 6))
(constraint (= (next 0 1 12 0 true 952 ) 7))
(constraint (= (next 0 4 12 1 true 816 ) 6))
(constraint (= (next 0 5 21 4 true 1157 ) 6))
(constraint (= (next 0 7 39 9 true 1727 ) 4))
(constraint (= (next 1 10 28 0 true 794 ) 7))

(check-synth)
