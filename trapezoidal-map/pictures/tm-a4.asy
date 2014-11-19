include "pictures/segment.asy";
include "pictures/trapezoid.asy";

unitsize(0.6cm, 0.3cm);

draw(segs[0]);
draw(segs[1]);
draw(segs[2]);
draw(segs[3]);

draw_vcomplement(segs[0].r, segs[1]);
draw_vcomplement(segs[0].r, segs[3]);
draw_vcomplement(segs[1].l, segs[0]);
draw_vcomplement(segs[3].l, segs[0]);
draw_vcomplement(segs[2].l, segs[3]);
draw_vcomplement(segs[2].r, segs[3]);

draw_vcomplement_pos_inf(segs[0].l);
draw_vcomplement_pos_neg(segs[0].l);
draw_vcomplement_pos_inf(segs[1].l);
draw_vcomplement_pos_inf(segs[2].l);
draw_vcomplement_pos_inf(segs[2].r);
draw_vcomplement_pos_neg(segs[3].l);
draw_vcomplement_pos_inf(segs[3].r);
draw_vcomplement_pos_neg(segs[3].r);

label_seg(0, SE, 0.4);
label_seg(1, N);
label_seg(2, SE);
label_seg(3, S);

label_trapezoid((2, 5), 0, 1);
label_trapezoid((4.2, 9), 2, 2);
label_trapezoid((6.5, 7), 3, 2);
label_trapezoid((7.7, 12), 4, 2);
label_trapezoid((9.3, 5), 5, 2);
label_trapezoid((11.4, 4), 6, 3);
label_trapezoid((11.4, 12), 7, 3);
label_trapezoid((12.55, 5), 8, 3);
label_trapezoid((4.6, 0.5), 9, 4);
label_trapezoid((7.3, 3.4), 10, 4);
label_trapezoid((9.5, 0.5), 11, 4);
label_trapezoid((13.6, 5), 12, 4);

dot((14.5, 15), invisible);
