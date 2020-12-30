(set-logic LIA)
(synth-fun next ((ip Int) (op Int) ) Int
	((Start Int) (StartBool Bool))
	((Start Int (
				 (+ Start Start)						
				 (- Start Start)						
				 (* Start Start)						
				 (- Start)
				 ip
				 op
				 5
				 1
				 0
				 1
				 5
				 (ite StartBool Start Start)))

	 (StartBool Bool (
					 (>= Start Start)						
					 (<= Start Start)						
					 (and StartBool StartBool)			
					 (or  StartBool StartBool)				
					 (not StartBool)))))

(declare-var ip Int)
(declare-var op Int)


(constraint (= (next (- 1) (- 1) ) (- 2)))
(constraint (= (next (- 1) (- 2) ) (- 3)))
(constraint (= (next (- 1) (- 3) ) (- 4)))
(constraint (= (next (- 1) (- 4) ) (- 5)))
(constraint (= (next (- 1) (- 5) ) (- 5)))

(check-synth)
