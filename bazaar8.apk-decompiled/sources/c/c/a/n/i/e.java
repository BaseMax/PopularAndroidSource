package c.c.a.n.i;

import b.r.u;
import com.farsitel.bazaar.common.model.ui.EntityState;

/* compiled from: BazaarForceUpdateDialogFragment.kt */
final class e<T> implements u<EntityState> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6433a;

    public e(f fVar) {
        this.f6433a = fVar;
    }

    public final void a(EntityState entityState) {
        if (entityState == null) {
            entityState = f.a(this.f6433a).f();
        }
        f.a(this.f6433a).b(entityState);
        f fVar = this.f6433a;
        fVar.a(entityState, f.a(fVar).i().a());
    }
}
