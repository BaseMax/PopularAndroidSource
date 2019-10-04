package b.o.a;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;

/* compiled from: FragmentTransition */
class E implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f2997a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Q f2998b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f2999c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Fragment f3000d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3001e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3002f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3003g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Object f3004h;

    public E(Object obj, Q q, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.f2997a = obj;
        this.f2998b = q;
        this.f2999c = view;
        this.f3000d = fragment;
        this.f3001e = arrayList;
        this.f3002f = arrayList2;
        this.f3003g = arrayList3;
        this.f3004h = obj2;
    }

    public void run() {
        Object obj = this.f2997a;
        if (obj != null) {
            this.f2998b.b(obj, this.f2999c);
            this.f3002f.addAll(H.a(this.f2998b, this.f2997a, this.f3000d, (ArrayList<View>) this.f3001e, this.f2999c));
        }
        if (this.f3003g != null) {
            if (this.f3004h != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.f2999c);
                this.f2998b.a(this.f3004h, (ArrayList<View>) this.f3003g, (ArrayList<View>) arrayList);
            }
            this.f3003g.clear();
            this.f3003g.add(this.f2999c);
        }
    }
}
