(set-logic LIA)
(synth-fun next ((cmd Int) (prev_s Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 2
				 3
				 4
				 5
				 (ite StartBool Start Start)))

	(Var Int (
			 1
			 2
			 3
			 4
			 5
			 6
			 7
			 8
			 cmd
			 prev_s
			 (+ Var Var)						
			 (- Var Var)						
			 (* Var Var)))

	(StartBool Bool (
					(= Var Var)						
					(>= Var Var)						
					(<= Var Var)						
					(and StartBool StartBool)			
					(or  StartBool StartBool)				
					(not StartBool)))))

(constraint (= (next 0 5 ) 2))
(constraint (= (next 0 5 ) 2))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 0 5 ) 2))
(constraint (= (next 0 5 ) 2))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 7 5 ) 5))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 0 0 ) 2))
(constraint (= (next 0 0 ) 2))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 0 4 ) 2))
(constraint (= (next 0 4 ) 2))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 0 3 ) 2))
(constraint (= (next 0 3 ) 2))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 7 0 ) 0))
(constraint (= (next 7 3 ) 3))
(constraint (= (next 7 4 ) 4))
(constraint (= (next 5 4 ) 2))
(constraint (= (next 1 4 ) 2))
(constraint (= (next 6 4 ) 2))
(constraint (= (next 2 4 ) 2))
(constraint (= (next 3 4 ) 2))
(constraint (= (next 8 4 ) 2))
(constraint (= (next 4 4 ) 2))
(constraint (= (next 7 4 ) 4))

(check-synth)