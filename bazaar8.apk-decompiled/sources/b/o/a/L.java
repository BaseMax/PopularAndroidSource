package b.o.a;

import android.graphics.Rect;
import android.transition.Transition;

/* compiled from: FragmentTransitionCompat21 */
class L extends Transition.EpicenterCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Rect f3045a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ M f3046b;

    public L(M m, Rect rect) {
        this.f3046b = m;
        this.f3045a = rect;
    }

    public Rect onGetEpicenter(Transition transition) {
        Rect rect = this.f3045a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f3045a;
    }
}
