package c.e.a.b.g.f;

import c.e.a.b.g.f.C0852nb;

/* renamed from: c.e.a.b.g.f.fc  reason: case insensitive filesystem */
public final class C0821fc implements Qb {

    /* renamed from: a  reason: collision with root package name */
    public final Sb f10405a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10406b;

    /* renamed from: c  reason: collision with root package name */
    public final Object[] f10407c;

    /* renamed from: d  reason: collision with root package name */
    public final int f10408d;

    public C0821fc(Sb sb, String str, Object[] objArr) {
        this.f10405a = sb;
        this.f10406b = str;
        this.f10407c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f10408d = charAt;
            return;
        }
        char c2 = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                c2 |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.f10408d = c2 | (charAt2 << i2);
                return;
            }
        }
    }

    public final Sb a() {
        return this.f10405a;
    }

    public final boolean b() {
        return (this.f10408d & 2) == 2;
    }

    public final int c() {
        return (this.f10408d & 1) == 1 ? C0852nb.e.f10480i : C0852nb.e.f10481j;
    }

    public final String d() {
        return this.f10406b;
    }

    public final Object[] e() {
        return this.f10407c;
    }
}
