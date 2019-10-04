package androidx.savedstate;

import androidx.lifecycle.Lifecycle;
import b.A.a;
import b.r.C0301g;
import b.r.k;

class SavedStateRegistry$1 implements C0301g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f963a;

    public SavedStateRegistry$1(a aVar) {
        this.f963a = aVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_START) {
            this.f963a.f1048d = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            this.f963a.f1048d = false;
        }
    }
}
