Number of literals: 17
Constructing lookup tables: [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
Post filtering unreachable actions:  [10%] [20%] [30%] [40%] [50%] [60%] [70%] [80%] [90%] [100%] [110%]
[01;34mNo analytic limits found, not considering limit effects of goal-only operators[00m
All the ground actions in this problem are compression-safe
Initial heuristic = 10.000
b (9.000 | 30.001)b (8.000 | 50.002)b (7.000 | 80.004)b (6.000 | 110.006)b (5.000 | 160.009)b (4.000 | 190.011)b (3.000 | 210.012)b (2.000 | 230.013)b (1.000 | 250.014);;;; Solution Found
; States evaluated: 32
; Cost: 260.015
; Time 0.00
0.000: (inspect_room kenny wp0 r3)  [10.000]
10.001: (goto_waypoint kenny r3 wp0)  [20.000]
30.002: (goto_waypoint kenny wp0 wp4)  [20.000]
50.003: (inspect_room kenny wp4 r5)  [10.000]
60.004: (goto_waypoint kenny r5 wp4)  [20.000]
80.005: (inspect_room kenny wp4 r6)  [10.000]
90.006: (goto_waypoint kenny r6 wp4)  [20.000]
110.007: (goto_waypoint kenny wp4 wp2)  [20.000]
130.008: (inspect_room kenny wp2 r2)  [10.000]
140.009: (goto_waypoint kenny r2 wp1)  [20.000]
160.010: (inspect_room kenny wp1 r1)  [10.000]
170.011: (goto_waypoint kenny r1 wp1)  [20.000]
190.012: (goto_waypoint kenny wp1 wp2)  [20.000]
210.013: (goto_waypoint kenny wp2 wp0)  [20.000]
230.014: (goto_waypoint kenny wp0 wp3)  [20.000]
250.015: (inspect_room kenny wp3 r4)  [10.000]
