real calc_ratio(real a, real b, real x)
{
    return (x - a) / (b - a);
}

real blend(real a, real b, real alpha)
{
    return a * (1 - alpha) + b * alpha;
}

pair seg_vray_intersection(Segment s, pair vorig)
{
    return (vorig.x, blend(s.l.y, s.r.y, calc_ratio(s.l.x, s.r.x, vorig.x)));
}

void draw_vcomplement(pair pt, Segment s)
{
    draw(pt--seg_vray_intersection(s, pt), dotted);
}

void draw_vcomplement_pos_inf(pair pt)
{
    draw(pt--(pt.x, 15), dotted);
}

void draw_vcomplement_pos_neg(pair pt)
{
    draw(pt--(pt.x, -2), dotted);
}

void label_trapezoid(pair p, int idx)
{
    string txt = "$\Delta_{" + string(idx) + "}$";
    label(txt, p, fontsize(7pt));
}

void label_trapezoid(pair p, int idx, int timestamp)
{
    string txt = "$\Delta_{" + string(idx) + "}^{(" + string(timestamp) + ")}$";
    label(txt, p, fontsize(7pt));
}

