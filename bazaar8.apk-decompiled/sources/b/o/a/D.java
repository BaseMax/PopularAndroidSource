package b.o.a;

import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransition */
class D implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f2996a;

    public D(ArrayList arrayList) {
        this.f2996a = arrayList;
    }

    public void run() {
        H.a((ArrayList<View>) this.f2996a, 4);
    }
}
