(define (problem p1)
	(:domain world-of-blocks)
	(:objects a b c d e f)
	(:init
		(clear a)
		(clear b)
		(clear c)
		(clear d)
		(clear e)
		(clear f)
		(on-floor a)
		(on-floor b)
		(on-floor c)
		(on-floor d)
		(on-floor e)
		(on-floor f)
	)
	(:goal
		(and
            (exists (?paczka) (on-floor ?paczka))
            (not(exists (?druga) (and
                (on-floor ?druga)
                (not(= ?druga ?paczka))
            )))
            (not(exists (?trzymana) (hold ?trzymana)))
		)
	)
)
