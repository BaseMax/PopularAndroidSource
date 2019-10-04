package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import b.r.C0298d;
import b.r.C0303i;
import b.r.k;

public class FullLifecycleObserverAdapter implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public final C0298d f702a;

    /* renamed from: b  reason: collision with root package name */
    public final C0303i f703b;

    public FullLifecycleObserverAdapter(C0298d dVar, C0303i iVar) {
        this.f702a = dVar;
        this.f703b = iVar;
    }

    public void a(k kVar, Lifecycle.Event event) {
        switch (C0299e.f3163a[event.ordinal()]) {
            case 1:
                this.f702a.b(kVar);
                break;
            case 2:
                this.f702a.f(kVar);
                break;
            case 3:
                this.f702a.a(kVar);
                break;
            case 4:
                this.f702a.c(kVar);
                break;
            case 5:
                this.f702a.d(kVar);
                break;
            case 6:
                this.f702a.e(kVar);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        C0303i iVar = this.f703b;
        if (iVar != null) {
            iVar.a(kVar, event);
        }
    }
}
