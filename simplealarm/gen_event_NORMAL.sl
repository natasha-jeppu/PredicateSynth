(set-logic LIA)
(synth-fun next ((inp Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 (ite StartBool Start Start)))

	(Var Int (
			 2
			 100
			 inp
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

(constraint (= (next 90 ) 0))
(constraint (= (next 91 ) 0))
(constraint (= (next 92 ) 0))
(constraint (= (next 93 ) 0))
(constraint (= (next 94 ) 0))
(constraint (= (next 95 ) 0))
(constraint (= (next 96 ) 0))
(constraint (= (next 97 ) 0))
(constraint (= (next 98 ) 0))
(constraint (= (next 99 ) 0))
(constraint (= (next 100 ) 0))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 97 ) 0))
(constraint (= (next 98 ) 0))
(constraint (= (next 99 ) 0))
(constraint (= (next 100 ) 0))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 101 ) 1))
(constraint (= (next 97 ) 0))
(constraint (= (next 98 ) 0))
(constraint (= (next 99 ) 0))
(constraint (= (next 100 ) 0))
(constraint (= (next 101 ) 1))

(check-synth)
