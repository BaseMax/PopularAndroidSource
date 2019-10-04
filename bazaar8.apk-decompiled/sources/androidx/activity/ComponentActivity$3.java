package androidx.activity;

import androidx.lifecycle.Lifecycle;
import b.a.C0188c;
import b.r.C0303i;
import b.r.k;

class ComponentActivity$3 implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0188c f214a;

    public ComponentActivity$3(C0188c cVar) {
        this.f214a = cVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY && !this.f214a.isChangingConfigurations()) {
            this.f214a.e().a();
        }
    }
}
