Natural Frequency Estimation of a Spring–Mass System using MATLAB
This repository presents my approach to solving a multi-degree-of-freedom spring–mass vibration system using the eigenvalue method together with MATLAB matrix computation. The purpose of this case study was not only to obtain the numerical values of the natural frequencies but also to understand how theoretical vibration equations can be translated into a computational method commonly used in mechanical engineering practice.
Problem Overview
In this case study, the spring–mass system was first analysed manually. Based on the physical configuration of masses and springs, the governing equations of motion were derived using Newton’s second law for free vibration.
From this analysis, equations representing the dynamic equilibrium of each mass were obtained. These equations included the effects of stiffness and inertia forces. After forming the equations manually, they were converted into a structured mathematical format. This step connects fundamental vibration theory with numerical problem solving and reflects how real engineering systems are analysed when equations become more complex.
Methodology Followed
Manual System Analysis
The masses and springs were identified and the displacement of each mass was assumed. Using Newton’s second law, force balance equations were written for each mass. The restoring forces due to springs were expressed in terms of displacement.
The resulting differential equations were simplified into matrix form representing the dynamic system.
Matrix Formulation
The derived equations were rearranged into the standard matrix representation:
[M]{ẍ} + [K]{x} = 0
where:
[M] represents the mass matrix
[K] represents the stiffness matrix
{x} represents the displacement vector
To determine natural frequencies, the eigenvalue problem was formulated as:
[K − ω²M] = 0
This converts the vibration problem into a matrix eigenvalue problem.
MATLAB Implementation
The mass and stiffness matrices were defined directly in MATLAB and solved using the built-in eigenvalue function:
eig(K, M)
This function computes the eigenvalues (ω²) and eigenvectors (mode shapes).
The natural frequencies were obtained by taking the square root of eigenvalues and converting them into Hertz. The results were verified to ensure consistency with theoretical expectations of vibration systems.
Learning Outcomes
This case study helped in understanding how theoretical vibration equations can be implemented in a computational workflow. It strengthened the connection between manual derivation of equations, matrix algebra, and numerical tools such as MATLAB.
It also improved understanding of:
Multi-degree-of-freedom vibration systems
Eigenvalue methods in engineering
Interpretation of natural frequencies and mode shapes
Practical application of MATLAB in mechanical engineering analysis
Purpose of this Repository
The objective of this repository is to document the complete process followed, starting from manual derivation of equations to matrix-based solving in MATLAB. It reflects a practical learning approach where classical vibration analysis is combined with programming methods to achieve accurate and efficient solutions.
