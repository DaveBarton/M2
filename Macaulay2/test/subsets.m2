assert( subsets(7,3) ==
     {{0, 1, 2}, {0, 1, 3}, {0, 2, 3}, {1, 2, 3}, {0, 1, 4}, {0, 2, 4}, {1, 2, 4}, {0, 3, 4}, {1, 3, 4}, {2, 3, 4}, {0, 1, 5}, {0, 2, 5}, {1, 2, 5}, {0, 3, 5}, {1, 3, 5}, {2, 3, 5}, {0, 4,
     5}, {1, 4, 5}, {2, 4, 5}, {3, 4, 5}, {0, 1, 6}, {0, 2, 6}, {1, 2, 6}, {0, 3, 6}, {1, 3, 6}, {2, 3, 6}, {0, 4, 6}, {1, 4, 6}, {2, 4, 6}, {3, 4, 6}, {0, 5, 6}, {1, 5, 6}, {2, 5, 6}, {3,
     5, 6}, {4, 5, 6}} )
assert( subsets(7,4) ==
     {{0, 1, 2, 3}, {0, 1, 2, 4}, {0, 1, 3, 4}, {0, 2, 3, 4}, {1, 2, 3, 4}, {0, 1, 2, 5}, {0, 1, 3, 5}, {0, 2, 3, 5}, {1, 2, 3, 5}, {0, 1, 4, 5}, {0, 2, 4, 5}, {1, 2, 4, 5}, {0, 3, 4, 5},
      {1, 3, 4, 5}, {2, 3, 4, 5}, {0, 1, 2, 6}, {0, 1, 3, 6}, {0, 2, 3, 6}, {1, 2, 3, 6}, {0, 1, 4, 6}, {0, 2, 4, 6}, {1, 2, 4, 6}, {0, 3, 4, 6}, {1, 3, 4, 6}, {2, 3, 4, 6}, {0, 1, 5, 6},
      {0, 2, 5, 6}, {1, 2, 5, 6}, {0, 3, 5, 6}, {1, 3, 5, 6}, {2, 3, 5, 6}, {0, 4, 5, 6}, {1, 4, 5, 6}, {2, 4, 5, 6}, {3, 4, 5, 6}} )
assert( subsets(7,5) ==
     {{0, 1, 2, 3, 4}, {0, 1, 2, 3, 5}, {0, 1, 2, 4, 5}, {0, 1, 3, 4, 5}, {0, 2, 3, 4, 5}, {1, 2, 3, 4, 5}, {0, 1, 2, 3, 6}, {0, 1, 2, 4, 6}, {0, 1, 3, 4, 6}, {0, 2, 3, 4, 6}, {1, 2, 3, 4,
      6}, {0, 1, 2, 5, 6}, {0, 1, 3, 5, 6}, {0, 2, 3, 5, 6}, {1, 2, 3, 5, 6}, {0, 1, 4, 5, 6}, {0, 2, 4, 5, 6}, {1, 2, 4, 5, 6}, {0, 3, 4, 5, 6}, {1, 3, 4, 5, 6}, {2, 3, 4, 5, 6}} )
assert( subsets(7,6) == {{0, 1, 2, 3, 4, 5}, {0, 1, 2, 3, 4, 6}, {0, 1, 2, 3, 5, 6}, {0, 1, 2, 4, 5, 6}, {0, 1, 3, 4, 5, 6}, {0, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}} )
assert( subsets(7,7) == {{0, 1, 2, 3, 4, 5, 6}} )
assert(
     subsets 7 ==
     {{}, {0}, {1}, {0, 1}, {2}, {0, 2}, {1, 2}, {0, 1, 2}, {3}, {0, 3}, {1, 3}, {0, 1, 3}, {2, 3}, {0, 2, 3}, {1, 2, 3}, {0, 1, 2, 3}, {4}, {0, 4}, {1, 4}, {0, 1, 4}, {2, 4}, {0, 2, 4},
      {1, 2, 4}, {0, 1, 2, 4}, {3, 4}, {0, 3, 4}, {1, 3, 4}, {0, 1, 3, 4}, {2, 3, 4}, {0, 2, 3, 4}, {1, 2, 3, 4}, {0, 1, 2, 3, 4}, {5}, {0, 5}, {1, 5}, {0, 1, 5}, {2, 5}, {0, 2, 5}, {1, 2,
      5}, {0, 1, 2, 5}, {3, 5}, {0, 3, 5}, {1, 3, 5}, {0, 1, 3, 5}, {2, 3, 5}, {0, 2, 3, 5}, {1, 2, 3, 5}, {0, 1, 2, 3, 5}, {4, 5}, {0, 4, 5}, {1, 4, 5}, {0, 1, 4, 5}, {2, 4, 5}, {0, 2, 4,
      5}, {1, 2, 4, 5}, {0, 1, 2, 4, 5}, {3, 4, 5}, {0, 3, 4, 5}, {1, 3, 4, 5}, {0, 1, 3, 4, 5}, {2, 3, 4, 5}, {0, 2, 3, 4, 5}, {1, 2, 3, 4, 5}, {0, 1, 2, 3, 4, 5}, {6}, {0, 6}, {1, 6}, {0,
      1, 6}, {2, 6}, {0, 2, 6}, {1, 2, 6}, {0, 1, 2, 6}, {3, 6}, {0, 3, 6}, {1, 3, 6}, {0, 1, 3, 6}, {2, 3, 6}, {0, 2, 3, 6}, {1, 2, 3, 6}, {0, 1, 2, 3, 6}, {4, 6}, {0, 4, 6}, {1, 4, 6},
      {0, 1, 4, 6}, {2, 4, 6}, {0, 2, 4, 6}, {1, 2, 4, 6}, {0, 1, 2, 4, 6}, {3, 4, 6}, {0, 3, 4, 6}, {1, 3, 4, 6}, {0, 1, 3, 4, 6}, {2, 3, 4, 6}, {0, 2, 3, 4, 6}, {1, 2, 3, 4, 6}, {0, 1, 2,
      3, 4, 6}, {5, 6}, {0, 5, 6}, {1, 5, 6}, {0, 1, 5, 6}, {2, 5, 6}, {0, 2, 5, 6}, {1, 2, 5, 6}, {0, 1, 2, 5, 6}, {3, 5, 6}, {0, 3, 5, 6}, {1, 3, 5, 6}, {0, 1, 3, 5, 6}, {2, 3, 5, 6}, {0,
      2, 3, 5, 6}, {1, 2, 3, 5, 6}, {0, 1, 2, 3, 5, 6}, {4, 5, 6}, {0, 4, 5, 6}, {1, 4, 5, 6}, {0, 1, 4, 5, 6}, {2, 4, 5, 6}, {0, 2, 4, 5, 6}, {1, 2, 4, 5, 6}, {0, 1, 2, 4, 5, 6}, {3, 4, 5,
      6}, {0, 3, 4, 5, 6}, {1, 3, 4, 5, 6}, {0, 1, 3, 4, 5, 6}, {2, 3, 4, 5, 6}, {0, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {0, 1, 2, 3, 4, 5, 6}} )
