include "pictures/segment.asy";
include "pictures/trapezoid.asy";

unitsize(0.6cm, 0.3cm);

draw(segs[0]);

draw_vcomplement_pos_inf(segs[0].l);
draw_vcomplement_pos_neg(segs[0].l);
draw_vcomplement_pos_inf(segs[0].r);
draw_vcomplement_pos_neg(segs[0].r);

label_seg(0, SE, 0.4);

label_trapezoid((2, 5), 0, 1);
label_trapezoid((6.0, 0), 1, 1);
label_trapezoid((6.0, 8.0), 2, 1);
label_trapezoid((9, 5), 3, 1);

dot((14.5, 15), invisible);
