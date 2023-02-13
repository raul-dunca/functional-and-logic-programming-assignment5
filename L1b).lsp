;gnu clisp  2.49.60


(defun level_node (tree X level stack)
    (cond  
        ((null tree) ()) 
        
        ((eq (car tree) X) level)
        
        ((eq (car (cdr tree)) 0) (level_node (cons (car stack) (cons (- (car (cdr stack)) 1) (cdr (cdr tree)))) X (- level 1) (cdr (cdr stack))))
                
        (T (level_node (cdr (cdr tree)) X (+ level 1) (cons  (car tree) (cons (car (cdr tree)) stack) )) )
    )
)

(print (level_node '(A 2 B 1 C 0 D 2 E 0 F 0) 'c 0 () ))


(print (level_node '(A 2 B 1 C 0 D 2 E 1 F 0 G 0) 'f 0 () ))


(print (level_node '(A 2 B 0 C 2 D 0 E 0) 'e 0 () ))
