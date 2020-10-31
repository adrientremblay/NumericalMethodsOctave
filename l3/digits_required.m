% for a targetted precision of p significant figures
% how many digits should we keep
% matrix A

function ret = digits_required(A, p)
    condA = cond(A, Inf);
    digits_lost = ceil(log10(condA));
    ret = p + digits_lost;
  
endfunction