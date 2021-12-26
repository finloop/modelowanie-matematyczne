// Schemat nr 13
// Definicje parametrów początkowych
E_1 = 140
E_2 = 220

R_1 = 5
R_2 = 4
R_3 = 24
R_4 = 40
R_5 = 12
R_6 = 18

// Definicja ukłądu równań
A = [
[0  ,0      ,0      ,1      ,-1     ,-1 ];
[0  ,-1     ,1      ,0      ,1      ,0  ];
[1  ,0      ,-1     ,-1     ,0      ,0  ];
[0  ,-R_2   ,0      ,0      ,-R_5   ,R_6];
[0  ,0      ,-R_3   ,R_4    ,R_5    ,0  ];
[R_1,R_2    ,R_3    ,0      ,0      ,0  ];
]
b = [0;0;0;E_2;0;-E_1]

// Rozwiązanie ukłądu w postaci Ax + b = 0
solution = linsolve(A, b)

// Obliczenie norm: 1, 2, inf
norm1 = norm(A,1)
norm2 = norm(A,2)
norm_inf = norm(A, 'inf')

// Obliczenie wskaźników uwarunkowania
a1 = norm(A, 1) * norm(inv(A), 1)
a2 = norm(A, 2) * norm(inv(A), 2)
a_inf = norm(A, 'inf') * norm(inv(A), 'inf')

R_1 = 5.4
R_2 = 4.3
R_3 = 24.6
R_4 = 40
R_5 = 13
R_6 = 17

A = [
[0  ,0      ,0      ,1      ,-1     ,-1 ];
[0  ,-1     ,1      ,0      ,1      ,0  ];
[1  ,0      ,-1     ,-1     ,0      ,0  ];
[0  ,-R_2   ,0      ,0      ,-R_5   ,R_6];
[0  ,0      ,-R_3   ,R_4    ,R_5    ,0  ];
[R_1,R_2    ,R_3    ,0      ,0      ,0  ];
]

solution = linsolve(A, b)

norm1 = norm(A,1)
norm2 = norm(A,2)
norm_inf = norm(A, 'inf')

a1 = norm(A, 1) * norm(inv(A), 1)
a2 = norm(A, 2) * norm(inv(A), 2)
a_inf = norm(A, 'inf') * norm(inv(A), 'inf')
