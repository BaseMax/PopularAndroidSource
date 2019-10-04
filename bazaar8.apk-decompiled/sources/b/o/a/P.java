package b.o.a;

import android.view.View;
import b.i.k.z;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: FragmentTransitionImpl */
class P implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3056a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Map f3057b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Q f3058c;

    public P(Q q, ArrayList arrayList, Map map) {
        this.f3058c = q;
        this.f3056a = arrayList;
        this.f3057b = map;
    }

    public void run() {
        int size = this.f3056a.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) this.f3056a.get(i2);
            z.a(view, (String) this.f3057b.get(z.r(view)));
        }
    }
}
