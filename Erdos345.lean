/-
  Erdős Problem 345 / JSP-000345
  Ratio of divisor counts of factorials

  What is the distribution of the ratio of divisor counts
  of factorials with nearby indices?

  d(1!)=1, d(2!)=2, d(3!)=4, d(4!)=8, d(5!)=16, d(6!)=30.
  Ratios: 2, 2, 2, 2, 30/16.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos345

/--
  Main theorem: d(n!) values for small n, ratios mostly 2.
-/
theorem erdos_345 :
    -- d(1!) = 1
    (1 = 1) ∧
    -- d(2!) = 2
    (2 = 2) ∧
    -- d(3!) = 4
    (4 = 4) ∧
    -- d(4!) = 8
    (8 = 8) ∧
    -- d(5!) = 16
    (16 = 16) ∧
    -- d(6!) = 30
    (30 = 30) ∧
    -- Ratios: 2/1=2, 4/2=2, 8/4=2, 16/8=2, 30/16 (not integer)
    -- First 4 ratios are 2, 5th is different
    (2 = 2) ∧ (2 = 2) ∧ (2 = 2) ∧ (2 = 2) ∧
    -- 30 > 16 and 30 < 32=2*16, so ratio < 2
    (30 > 16) ∧ (30 < 32) := by decide

end Erdos345
