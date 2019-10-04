package b.o.a;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransitionCompat21 */
class K implements Transition.TransitionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f3038a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3039b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f3040c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3041d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f3042e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3043f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ M f3044g;

    public K(M m, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f3044g = m;
        this.f3038a = obj;
        this.f3039b = arrayList;
        this.f3040c = obj2;
        this.f3041d = arrayList2;
        this.f3042e = obj3;
        this.f3043f = arrayList3;
    }

    public void onTransitionCancel(Transition transition) {
    }

    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    public void onTransitionPause(Transition transition) {
    }

    public void onTransitionResume(Transition transition) {
    }

    public void onTransitionStart(Transition transition) {
        Object obj = this.f3038a;
        if (obj != null) {
            this.f3044g.a(obj, (ArrayList<View>) this.f3039b, (ArrayList<View>) null);
        }
        Object obj2 = this.f3040c;
        if (obj2 != null) {
            this.f3044g.a(obj2, (ArrayList<View>) this.f3041d, (ArrayList<View>) null);
        }
        Object obj3 = this.f3042e;
        if (obj3 != null) {
            this.f3044g.a(obj3, (ArrayList<View>) this.f3043f, (ArrayList<View>) null);
        }
    }
}
