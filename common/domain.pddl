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
        :duration ( = ?duration 10)
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
        :parameters (?v - robot ?wp ?r - waypoint)
        :duration ( = ?duration 20)
        :condition (and
            (at start (robot_at ?v ?wp))
	    (at start (is_room ?r))
            (at start (not (inspected ?r)))
	    (at start (adjacent ?wp ?r))
	    
        )
        :effect (and
            (at start (not (robot_at ?v ?wp)))
            (at end (robot_at ?v ?r))
            (at end (inspected ?r))
        )
    )

    
    (:durative-action inspect_room
        :parameters (?v - robot ?r - waypoint)
        :duration ( = ?duration 20)
        :condition (and
            (at start (robot_at ?v ?r))
	    (at start (is_room ?r))
            (at start (not (inspected ?r)))
	    
	    
        )
        :effect (and
            (at start (not (robot_at ?v ?r)))
            (at end (robot_at ?v ?r))
            (at end (inspected ?r))
        )
    )

)

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r1'}
  function_value: 0.0"

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r2'}
  function_value: 0.0"

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r3'}
  function_value: 0.0"

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r4'}
  function_value: 0.0"

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r5'}
  function_value: 0.0"

param_type="$param_type
- 1";
param="$param
- knowledge_type: 1
  instance_type: ''
  instance_name: ''
  attribute_name: 'inspected'
  values:
  - {key: 'wp', value: 'r6'}
  function_value: 0.0"

