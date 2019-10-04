package b.o.a;

import android.graphics.Rect;
import android.transition.Transition;

/* compiled from: FragmentTransitionCompat21 */
class I extends Transition.EpicenterCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Rect f3033a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ M f3034b;

    public I(M m, Rect rect) {
        this.f3034b = m;
        this.f3033a = rect;
    }

    public Rect onGetEpicenter(Transition transition) {
        return this.f3033a;
    }
}
