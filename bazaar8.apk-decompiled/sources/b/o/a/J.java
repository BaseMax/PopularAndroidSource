package b.o.a;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;

/* compiled from: FragmentTransitionCompat21 */
class J implements Transition.TransitionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f3035a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3036b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ M f3037c;

    public J(M m, View view, ArrayList arrayList) {
        this.f3037c = m;
        this.f3035a = view;
        this.f3036b = arrayList;
    }

    public void onTransitionCancel(Transition transition) {
    }

    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.f3035a.setVisibility(8);
        int size = this.f3036b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((View) this.f3036b.get(i2)).setVisibility(0);
        }
    }

    public void onTransitionPause(Transition transition) {
    }

    public void onTransitionResume(Transition transition) {
    }

    public void onTransitionStart(Transition transition) {
    }
}
