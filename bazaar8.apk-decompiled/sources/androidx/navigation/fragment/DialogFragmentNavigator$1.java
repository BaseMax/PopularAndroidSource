package androidx.navigation.fragment;

import androidx.lifecycle.Lifecycle;
import b.o.a.C0280d;
import b.r.C0303i;
import b.r.k;
import b.w.b.a;

class DialogFragmentNavigator$1 implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f740a;

    public DialogFragmentNavigator$1(a aVar) {
        this.f740a = aVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_STOP) {
            C0280d dVar = (C0280d) kVar;
            if (!dVar.Pa().isShowing()) {
                NavHostFragment.b(dVar).i();
            }
        }
    }
}
