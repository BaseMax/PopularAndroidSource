package c.e.a.a.o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: SlidingPercentile */
public class A {

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<a> f9540a = C0734b.f9579a;

    /* renamed from: b  reason: collision with root package name */
    public static final Comparator<a> f9541b = C0735c.f9580a;

    /* renamed from: c  reason: collision with root package name */
    public final int f9542c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList<a> f9543d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    public final a[] f9544e = new a[5];

    /* renamed from: f  reason: collision with root package name */
    public int f9545f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f9546g;

    /* renamed from: h  reason: collision with root package name */
    public int f9547h;

    /* renamed from: i  reason: collision with root package name */
    public int f9548i;

    /* compiled from: SlidingPercentile */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f9549a;

        /* renamed from: b  reason: collision with root package name */
        public int f9550b;

        /* renamed from: c  reason: collision with root package name */
        public float f9551c;

        public a() {
        }
    }

    public A(int i2) {
        this.f9542c = i2;
    }

    public static /* synthetic */ int a(a aVar, a aVar2) {
        return aVar.f9549a - aVar2.f9549a;
    }

    public void c() {
        this.f9543d.clear();
        this.f9545f = -1;
        this.f9546g = 0;
        this.f9547h = 0;
    }

    public void a(int i2, float f2) {
        a aVar;
        a();
        int i3 = this.f9548i;
        if (i3 > 0) {
            a[] aVarArr = this.f9544e;
            int i4 = i3 - 1;
            this.f9548i = i4;
            aVar = aVarArr[i4];
        } else {
            aVar = new a();
        }
        int i5 = this.f9546g;
        this.f9546g = i5 + 1;
        aVar.f9549a = i5;
        aVar.f9550b = i2;
        aVar.f9551c = f2;
        this.f9543d.add(aVar);
        this.f9547h += i2;
        while (true) {
            int i6 = this.f9547h;
            int i7 = this.f9542c;
            if (i6 > i7) {
                int i8 = i6 - i7;
                a aVar2 = this.f9543d.get(0);
                int i9 = aVar2.f9550b;
                if (i9 <= i8) {
                    this.f9547h -= i9;
                    this.f9543d.remove(0);
                    int i10 = this.f9548i;
                    if (i10 < 5) {
                        a[] aVarArr2 = this.f9544e;
                        this.f9548i = i10 + 1;
                        aVarArr2[i10] = aVar2;
                    }
                } else {
                    aVar2.f9550b = i9 - i8;
                    this.f9547h -= i8;
                }
            } else {
                return;
            }
        }
    }

    public final void b() {
        if (this.f9545f != 0) {
            Collections.sort(this.f9543d, f9541b);
            this.f9545f = 0;
        }
    }

    public float a(float f2) {
        float f3;
        b();
        float f4 = f2 * ((float) this.f9547h);
        int i2 = 0;
        for (int i3 = 0; i3 < this.f9543d.size(); i3++) {
            a aVar = this.f9543d.get(i3);
            i2 += aVar.f9550b;
            if (((float) i2) >= f4) {
                return aVar.f9551c;
            }
        }
        if (this.f9543d.isEmpty()) {
            f3 = Float.NaN;
        } else {
            ArrayList<a> arrayList = this.f9543d;
            f3 = arrayList.get(arrayList.size() - 1).f9551c;
        }
        return f3;
    }

    public final void a() {
        if (this.f9545f != 1) {
            Collections.sort(this.f9543d, f9540a);
            this.f9545f = 1;
        }
    }
}
