package b.o.a;

import android.view.View;
import b.i.k.z;
import java.util.ArrayList;

/* compiled from: FragmentTransitionImpl */
class N implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3047a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3048b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3049c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3050d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3051e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Q f3052f;

    public N(Q q, int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f3052f = q;
        this.f3047a = i2;
        this.f3048b = arrayList;
        this.f3049c = arrayList2;
        this.f3050d = arrayList3;
        this.f3051e = arrayList4;
    }

    public void run() {
        for (int i2 = 0; i2 < this.f3047a; i2++) {
            z.a((View) this.f3048b.get(i2), (String) this.f3049c.get(i2));
            z.a((View) this.f3050d.get(i2), (String) this.f3051e.get(i2));
        }
    }
}
