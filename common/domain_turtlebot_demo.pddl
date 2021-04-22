(define (domain inspection)

    (:requirements
        :durative-actions
        :equality
        :negative-preconditions
        :numeric-fluents
        :object-fluents
        :typing
    )

    (:types
        waypoint robot
    )

    (:predicates
        (robot_at ?v - robot ?wp - waypoint)
        (adjacent ?from ?to - waypoint)
        (inspected ?wp - waypoint)
	(is_room ?wp - waypoint)
    )

    (:durative-action goto_waypoint
        :parameters (?v - robot ?from ?to - waypoint)
        :duration ( = ?duration 20)
        :condition (and
            (at start (robot_at ?v ?from))
            (at start (adjacent ?from ?to))
        )
        :effect (and
            (at start (not (robot_at ?v ?from)))
            (at end (robot_at ?v ?to))
	    
        )
    )
    (:durative-action inspect_room
        :parameters (?v - robot ?from ?to - waypoint)
        :duration ( = ?duration 10)
        :condition (and
            (at start (robot_at ?v ?from))
	    (at start (is_room ?to))
   	    (at start (adjacent ?from ?to))
        )
        :effect (and
	    (at start (not (robot_at ?v ?from)))
            (at end (inspected ?to))
	    (at end (robot_at ?v ?to))
        )
    )
)
