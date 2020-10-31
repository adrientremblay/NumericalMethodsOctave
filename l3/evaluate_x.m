% calculates FE, BE, magnification factor M, and condition number of a matrix solution Xr

function ret = evaluate_x(A, B, Xr)
  DOUBLE_PREC_DIGITS = 16;

  % find exact solution r
  r = gauss_elimination_pp(A, B)

  % calculating the absolute forward error fe using formula
  fe_abs = norm((r - Xr), Inf)
  % calculating the relative forward  error
  fe_rel = fe_abs/norm(r, Inf)

  % calculating the absolute backward error be using formula
  be_abs = norm((A*Xr- B), Inf)
  % calculating the relative backward error
  be_rel = be_abs/norm(B, Inf)

  % calculating the magnification factor M
  M = fe_rel/be_rel

  % calculating the condition number condA
  % could have also used cond(A, Inf)  :/
  condA = norm(A, Inf) * norm(inv(A), Inf)

  % calculating num correct digits using condA (best case scenario)
  num_correct_digits = DOUBLE_PREC_DIGITS - ceil(log10(condA))
  
endfunction