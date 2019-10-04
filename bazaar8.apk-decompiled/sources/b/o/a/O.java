package b.o.a;

import android.view.View;
import b.i.k.z;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: FragmentTransitionImpl */
class O implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3053a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Map f3054b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Q f3055c;

    public O(Q q, ArrayList arrayList, Map map) {
        this.f3055c = q;
        this.f3053a = arrayList;
        this.f3054b = map;
    }

    public void run() {
        int size = this.f3053a.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) this.f3053a.get(i2);
            String r = z.r(view);
            if (r != null) {
                z.a(view, Q.a((Map<String, String>) this.f3054b, r));
            }
        }
    }
}
