package b.w;

import android.os.Bundle;
import b.r.H;
import b.r.I;
import java.util.UUID;

/* renamed from: b.w.h  reason: case insensitive filesystem */
/* compiled from: NavBackStackEntry */
public final class C0311h implements I {

    /* renamed from: a  reason: collision with root package name */
    public final o f3287a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f3288b;

    /* renamed from: c  reason: collision with root package name */
    public final UUID f3289c;

    /* renamed from: d  reason: collision with root package name */
    public C0315l f3290d;

    public C0311h(o oVar, Bundle bundle, C0315l lVar) {
        this(UUID.randomUUID(), oVar, bundle, lVar);
    }

    public Bundle a() {
        return this.f3288b;
    }

    public o b() {
        return this.f3287a;
    }

    public H e() {
        return this.f3290d.b(this.f3289c);
    }

    public C0311h(UUID uuid, o oVar, Bundle bundle, C0315l lVar) {
        this.f3289c = uuid;
        this.f3287a = oVar;
        this.f3288b = bundle;
        this.f3290d = lVar;
    }

    public void a(C0315l lVar) {
        this.f3290d = lVar;
    }
}
