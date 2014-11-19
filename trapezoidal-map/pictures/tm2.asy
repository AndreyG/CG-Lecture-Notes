include "pictures/segment.asy";
include "pictures/trapezoid.asy";

unitsize(0.6cm, 0.3cm);

draw(segs[0]);
draw(segs[1]);

draw_vcomplement_pos_inf(segs[0].l);
draw_vcomplement_pos_neg(segs[0].l);
draw_vcomplement_pos_neg(segs[0].r);
draw_vcomplement_pos_inf(segs[1].l);
draw_vcomplement_pos_inf(segs[1].r);
draw_vcomplement_pos_neg(segs[1].r);

draw_vcomplement(segs[0].r, segs[1]);
draw_vcomplement(segs[1].l, segs[0]);

label_seg(0, SE, 0.4);
label_seg(1, N);

label_trapezoid((2, 5), 0, 1);
label_trapezoid((6.0, 0), 1, 1);
label_trapezoid((4.2, 9), 2, 2);
label_trapezoid((6.5, 7), 3, 2);
label_trapezoid((7.7, 12), 4, 2);
label_trapezoid((9.3, 2), 5, 2);
label_trapezoid((11, 5), 6, 2);

dot((14.5, 15), invisible);
