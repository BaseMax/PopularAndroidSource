package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import b.r.C0300f;
import b.r.C0303i;
import b.r.k;
import b.r.s;

public class CompositeGeneratedAdaptersObserver implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final C0300f[] f701a;

    public CompositeGeneratedAdaptersObserver(C0300f[] fVarArr) {
        this.f701a = fVarArr;
    }

    public void a(k kVar, Lifecycle.Event event) {
        s sVar = new s();
        for (C0300f a2 : this.f701a) {
            a2.a(kVar, event, false, sVar);
        }
        for (C0300f a3 : this.f701a) {
            a3.a(kVar, event, true, sVar);
        }
    }
}
