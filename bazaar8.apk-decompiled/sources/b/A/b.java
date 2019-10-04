package b.A;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.Recreator;

/* compiled from: SavedStateRegistryController */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final c f1049a;

    /* renamed from: b  reason: collision with root package name */
    public final a f1050b = new a();

    public b(c cVar) {
        this.f1049a = cVar;
    }

    public a a() {
        return this.f1050b;
    }

    public void b(Bundle bundle) {
        this.f1050b.a(bundle);
    }

    public void a(Bundle bundle) {
        Lifecycle b2 = this.f1049a.b();
        if (b2.a() == Lifecycle.State.INITIALIZED) {
            b2.a(new Recreator(this.f1049a));
            this.f1050b.a(b2, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    public static b a(c cVar) {
        return new b(cVar);
    }
}
