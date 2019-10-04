package c.c.a.n.t.a;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import com.farsitel.bazaar.core.model.ResourceState;

/* compiled from: NickNameSharedViewModel.kt */
public final class c extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<ResourceState> f6935d = new t<>();

    public final void e() {
        this.f6935d.b(ResourceState.Error.f12177a);
    }

    public final LiveData<ResourceState> f() {
        return this.f6935d;
    }

    public final void g() {
        this.f6935d.b(ResourceState.Success.f12179a);
    }
}
