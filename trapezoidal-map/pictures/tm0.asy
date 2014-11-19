include "pictures/segment.asy";
include "pictures/trapezoid.asy";

unitsize(0.6cm, 0.3cm);

draw((3, -2)--(3, 15), dotted);
draw((13, -2)--(13, 15), dotted);
label_trapezoid((8, 5), 0, 0);

dot((14.5, 15), invisible);

