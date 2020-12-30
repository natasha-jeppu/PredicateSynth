(set-logic LIA)
(synth-fun next ((cmd Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 (ite StartBool Start Start)))

	(Var Int (
			 2
			 100
			 cmd
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

(constraint (= (next 1 ) 0))
(constraint (= (next 2 ) 2))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 1 ) 0))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 2 ) 2))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 2 ) 2))
(constraint (= (next 1 ) 0))
(constraint (= (next 2 ) 2))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 2 ) 2))
(constraint (= (next 1 ) 0))
(constraint (= (next 2 ) 2))
(constraint (= (next 2 ) 2))
(constraint (= (next 1 ) 0))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 3 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 2 ) 2))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))
(constraint (= (next 0 ) 1))

(check-synth)
