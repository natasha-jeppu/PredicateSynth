(set-logic LIA)
(synth-fun next ((inp Int) (cmd Int) (high_thresh Int) (low_thresh Int) ) Int
	((Start Int) (Var Int) (StartBool Bool))
	((Start Int (
				 0
				 1
				 2
				 4
				 6
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
			 inp
			 cmd
			 high_thresh
			 low_thresh
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

(constraint (= (next 22 0 100 20 ) 0))
(constraint (= (next 23 0 100 20 ) 0))
(constraint (= (next 24 0 100 20 ) 0))
(constraint (= (next 25 0 100 20 ) 0))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 27 0 100 20 ) 0))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 44 1 100 20 ) 6))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 26 0 100 20 ) 0))
(constraint (= (next 27 1 100 20 ) 6))
(constraint (= (next 30 1 100 20 ) 6))
(constraint (= (next 32 2 100 20 ) 2))
(constraint (= (next 34 0 100 20 ) 0))
(constraint (= (next 35 1 100 20 ) 6))
(constraint (= (next 37 0 100 20 ) 0))
(constraint (= (next 38 2 100 20 ) 2))
(constraint (= (next 42 1 100 20 ) 6))
(constraint (= (next 44 2 100 20 ) 2))
(constraint (= (next 46 2 100 20 ) 2))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 26 3 100 20 ) 1))
(constraint (= (next 28 0 100 20 ) 0))
(constraint (= (next 29 0 100 20 ) 0))
(constraint (= (next 30 3 100 20 ) 1))
(constraint (= (next 34 1 100 20 ) 6))
(constraint (= (next 36 3 100 20 ) 1))
(constraint (= (next 38 2 100 20 ) 2))
(constraint (= (next 40 3 100 20 ) 1))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 26 1 100 20 ) 6))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 26 2 100 20 ) 2))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 26 3 100 20 ) 1))
(constraint (= (next 28 1 100 20 ) 6))
(constraint (= (next 101 0 100 20 ) 4))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 0 0 100 20 ) 4))
(constraint (= (next 0 0 100 20 ) 4))
(constraint (= (next 0 0 100 20 ) 4))
(constraint (= (next 161 0 100 20 ) 4))
(constraint (= (next 25 4 100 20 ) 0))
(constraint (= (next 26 8 100 20 ) 0))
(constraint (= (next 27 7 100 20 ) 0))
(constraint (= (next 28 6 100 20 ) 0))
(constraint (= (next 29 5 100 20 ) 0))
(constraint (= (next 30 0 100 20 ) 0))
(constraint (= (next 101 0 100 20 ) 4))
(constraint (= (next 34 1 100 20 ) 6))
(constraint (= (next 101 0 100 20 ) 4))
(constraint (= (next 24 1 100 20 ) 6))
(constraint (= (next 101 0 100 20 ) 4))
(constraint (= (next 24 2 100 20 ) 2))
(constraint (= (next 102 0 100 20 ) 4))
(constraint (= (next 25 3 100 20 ) 1))
(constraint (= (next 27 0 100 20 ) 0))
(constraint (= (next 0 0 100 20 ) 4))
(constraint (= (next 5 0 100 20 ) 4))
(constraint (= (next 10 0 100 20 ) 4))
(constraint (= (next 15 0 100 20 ) 4))
(constraint (= (next 25 0 100 20 ) 0))
(constraint (= (next 10 5 100 20 ) 4))
(constraint (= (next 10 1 100 20 ) 4))
(constraint (= (next 10 6 100 20 ) 4))
(constraint (= (next 101 2 100 20 ) 4))
(constraint (= (next 101 2 100 20 ) 4))
(constraint (= (next 10 7 100 20 ) 4))
(constraint (= (next 10 3 100 20 ) 4))
(constraint (= (next 10 8 100 20 ) 4))
(constraint (= (next 10 4 100 20 ) 4))
(constraint (= (next 101 5 100 20 ) 4))
(constraint (= (next 101 1 100 20 ) 4))
(constraint (= (next 101 6 100 20 ) 4))
(constraint (= (next 101 2 100 20 ) 4))
(constraint (= (next 101 7 100 20 ) 4))
(constraint (= (next 101 3 100 20 ) 4))
(constraint (= (next 101 8 100 20 ) 4))
(constraint (= (next 101 4 100 20 ) 4))
(constraint (= (next 10 2 100 20 ) 4))
(constraint (= (next 26 0 100 20 ) 0))
(constraint (= (next 27 0 100 20 ) 0))
(constraint (= (next 28 3 100 20 ) 1))
(constraint (= (next 30 3 100 20 ) 1))
(constraint (= (next 32 0 100 20 ) 0))
(constraint (= (next 0 0 100 20 ) 4))

(check-synth)
