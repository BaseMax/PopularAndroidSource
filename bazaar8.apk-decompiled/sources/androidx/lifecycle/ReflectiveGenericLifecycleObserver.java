package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import b.r.C0296b;
import b.r.C0303i;
import b.r.k;

public class ReflectiveGenericLifecycleObserver implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final Object f724a;

    /* renamed from: b  reason: collision with root package name */
    public final C0296b.a f725b = C0296b.f3156a.b(this.f724a.getClass());

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f724a = obj;
    }

    public void a(k kVar, Lifecycle.Event event) {
        this.f725b.a(kVar, event, this.f724a);
    }
}
