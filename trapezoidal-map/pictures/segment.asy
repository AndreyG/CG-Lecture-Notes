struct Segment {
    pair l, r;

    void operator init(pair l, pair r) {
        this.l = l;
        this.r = r;
    }
}

void draw(Segment s)
{
    draw(s.l--s.r);
}

pair apply(Segment s, real r)
{
    return s.l * (1 - r) + s.r * r;
}

Segment[] segs = {
    Segment((3, 2), (8, 5)),
    Segment((5, 10), (10, 7)),
    Segment((10, 7), (12, 11)),
    Segment((6, 3), (13, 2)),
};

void label_seg(int s_idx, align a, real r = 0.5)
{
    string txt = "$s_" + string(s_idx + 1) + "$";
    label(txt, apply(segs[s_idx], r), a, fontsize(5pt)+blue);
}
