TEST ///
-- Test cayley_polytope/c2.poly
-- Checking hilbertBasis
raysC0 = matrix {{1,1,1,1,1,1,1,1,1},{0,1,0,0,1,0,1,0,1},{0,0,1,0,0,1,1,0,0},{1,1,1,0,0,0,0,0,0},{0,0,0,1,1,1,1,0,0}};
desiredHB0 = matrix {{1,1,1,1,1,1,1,1,1},{0,0,0,0,0,1,1,1,1},{0,0,0,1,1,0,0,0,1},{0,0,1,0,1,0,0,1,0},{0,1,0,1,0,0,1,0,1}};
desiredHB0 = sort desiredHB0;
C0 = coneFromVData(raysC0)
computedHB0 = sort matrix {hilbertBasis C0};
assert(sort desiredHB0 == sort computedHB0);

-- Test gc_closure/3-0.poly
-- Checking hilbertBasis
raysC1 = matrix {{1,1,1,1,1,1,1,1},{3/2,-1/2,1/2,1/2,1/2,1/2,1/2,1/2},{1/2,1/2,3/2,-1/2,1/2,1/2,1/2,1/2},{1/2,1/2,1/2,1/2,3/2,-1/2,1/2,1/2},{1/2,1/2,1/2,1/2,1/2,1/2,3/2,-1/2}};
desiredHB1 = matrix {{2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},{-1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,3,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3},{1,0,1,1,1,1,1,2,-1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,3,0,1,1,1,1,1,2,1,1,1,1,1,2,2,2,2,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,1,1,1,1,2,2,2,2},{1,1,0,1,1,1,2,1,1,0,1,1,1,2,-1,0,0,0,1,1,1,1,1,2,2,2,3,0,1,1,1,2,1,1,0,1,1,1,2,1,1,1,1,2,2,1,1,2,2,1,1,2,2,0,0,1,1,1,1,2,2,2,2,3,3,0,0,1,1,1,1,2,2,2,2,3,3,1,1,2,2,1,1,2,2,0,0,1,1,1,1,2,2,2,2,3,3,0,0,1,1,1,1,2,2,2,2,3,3,1,1,2,2,1,1,2,2,1,1,2,2},{1,1,1,0,1,2,1,1,1,1,0,1,2,1,1,0,1,2,-1,0,1,2,3,0,1,2,1,1,0,1,2,1,1,1,1,0,1,2,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,0,1,2,3,0,1,2,3,1,2,1,2,0,1,2,3,0,1,2,3,1,2,1,2,1,2,1,2,1,2,1,2,0,1,2,3,0,1,2,3,1,2,1,2,0,1,2,3,0,1,2,3,1,2,1,2,1,2,1,2,1,2,1,2,1,2}};
C1 = coneFromVData(raysC1)
computedHB1 = sort matrix {hilbertBasis C1};
assert(sort desiredHB1 == sort computedHB1);

-- Test SCHLEGEL_VERTEX_COLORS/1.poly
-- Checking hilbertBasis
raysC2 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1},{-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1},{-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1}};
desiredHB2 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1},{-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1},{-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1}};
desiredHB2 = sort desiredHB2;
C2 = coneFromVData(raysC2)
computedHB2 = sort matrix {hilbertBasis C2};
assert(sort desiredHB2 == sort computedHB2);

-- Test VISUAL_DUAL_FACE_LATTICE/1.poly
-- Checking hilbertBasis
raysC3 = matrix {{1,1,1,1,1,1,1,1},{-1,1,-1,1,-1,1,-1,1},{-1,-1,1,1,-1,-1,1,1},{-1,-1,-1,-1,1,1,1,1}};
desiredHB3 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1},{-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1},{-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1}};
desiredHB3 = sort desiredHB3;
C3 = coneFromVData(raysC3)
computedHB3 = sort matrix {hilbertBasis C3};
assert(sort desiredHB3 == sort computedHB3);

-- Test zonotope/6.poly
-- Checking hilbertBasis
raysC4 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{1,0,0,0,0,1,1,1,1,0,0,1,1,0,0,1},{0,0,2,0,2,2,0,0,2,2,2,2,2,0,0,0},{0,4,4,0,0,4,4,0,0,4,0,4,0,4,0,4},{0,0,8,8,0,8,0,8,0,0,8,0,8,8,0,8}};
desiredHB4 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},{0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4},{0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8,0,1,2,3,4,5,6,7,8}};
desiredHB4 = sort desiredHB4;
C4 = coneFromVData(raysC4)
computedHB4 = sort matrix {hilbertBasis C4};
assert(sort desiredHB4 == sort computedHB4);

-- Test zonotope/9.poly
-- Checking hilbertBasis
raysC5 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1},{0,2,0,2,0,2,0,2,0,2,0,2},{0,0,2,2,4,4,0,0,2,2,4,4},{0,0,2,2,0,0,-2,-2,-4,-4,-2,-2}};
desiredHB5 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},{0,0,0,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,0,0,0,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4,0,0,0,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3,4,4,4},{-2,-1,0,-3,-2,-1,0,1,-4,-3,-2,-1,0,1,2,-3,-2,-1,0,1,-2,-1,0,-2,-1,0,-3,-2,-1,0,1,-4,-3,-2,-1,0,1,2,-3,-2,-1,0,1,-2,-1,0,-2,-1,0,-3,-2,-1,0,1,-4,-3,-2,-1,0,1,2,-3,-2,-1,0,1,-2,-1,0}};
desiredHB5 = sort desiredHB5;
C5 = coneFromVData(raysC5)
computedHB5 = sort matrix {hilbertBasis C5};
assert(sort desiredHB5 == sort computedHB5);

-- Test random_edge_epl/1.poly
-- Checking hilbertBasis
raysC6 = matrix {{1,1,1,1,1,1,1,1},{1,0,0,1,0,1,0,1},{3/4,1,0,1/4,0,1/4,1,3/4},{3/16,1/4,0,1/16,1,15/16,3/4,13/16}};
desiredHB6 = matrix {{1,1,2,2,2,2,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,6,6,6,6,6,6,7,7,7,7,7,7,8,8,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,11,11,12,12,12,12,13,13,14,14,15,15,16,16,16,16},{0,0,0,0,1,2,0,0,1,1,2,2,3,3,3,3,0,0,1,1,2,2,3,3,3,4,4,4,4,4,4,4,4,1,1,2,2,3,3,4,4,4,4,5,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,7,8,8,8,8,8,8,9,9,9,9,10,10,10,10,11,11,11,11,11,11,12,12,12,12,13,13,14,14,15,15,16,16,16,16},{0,0,1,2,1,1,3,3,2,2,2,2,1,1,2,2,4,4,3,3,3,3,3,3,3,1,1,1,2,2,3,3,3,4,4,4,4,4,4,4,4,4,4,2,2,3,3,4,4,2,2,3,3,4,4,2,2,3,3,4,4,2,2,3,3,4,4,3,3,4,4,3,3,4,4,3,3,4,4,8,8,3,3,4,4,4,4,4,4,4,4,4,4,12,12},{0,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,2,3,1,2,3,1,3,1,2,3,1,4,1,4,1,4,1,2,3,4,1,4,1,4,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,7,1,7,1,7,1,8,1,8,1,9,1,9,1,10,1,10,2,9,1,11,1,11,1,12,1,13,1,14,1,15,3,13}};
C6 = coneFromVData(raysC6)
computedHB6 = sort matrix {hilbertBasis C6};
assert(sort desiredHB6 == sort computedHB6);

-- Test schlegel_params/2.poly
-- Checking hilbertBasis
raysC7 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1,-1,1},{-1,-1,1,1,-1,-1,1,1,-1,-1,1,1,-1,-1,1,1},{-1,-1,-1,-1,1,1,1,1,-1,-1,-1,-1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,1,1,1,1,1,1,1,1}};
desiredHB7 = matrix {{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},{-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1},{-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1,-1,-1,-1,0,0,0,1,1,1},{-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1,-1,0,1}};
desiredHB7 = sort desiredHB7;
C7 = coneFromVData(raysC7)
computedHB7 = sort matrix {hilbertBasis C7};
assert(sort desiredHB7 == sort computedHB7);

///
