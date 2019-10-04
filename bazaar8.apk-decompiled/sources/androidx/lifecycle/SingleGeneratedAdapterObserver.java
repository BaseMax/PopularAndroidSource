package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import b.r.C0300f;
import b.r.C0303i;
import b.r.k;

public class SingleGeneratedAdapterObserver implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final C0300f f726a;

    public SingleGeneratedAdapterObserver(C0300f fVar) {
        this.f726a = fVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        this.f726a.a(kVar, event, false, null);
        this.f726a.a(kVar, event, true, null);
    }
}
