package c.c.a.n.u.b;

import androidx.lifecycle.LiveData;
import c.c.a.c.c.a;
import c.c.a.c.h.g;
import c.c.a.d.c.b;
import c.c.a.d.f.p;
import c.c.a.p.I;
import com.farsitel.bazaar.core.model.PostCommentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.EntityType;
import h.f.b.j;

/* compiled from: PostCommentViewModel.kt */
public final class e extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<ResourceState>> f6988d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final I f6989e;

    /* renamed from: f  reason: collision with root package name */
    public final b f6990f;

    public e(I i2, b bVar) {
        j.b(i2, "workManagerScheduler");
        j.b(bVar, "accountManager");
        this.f6989e = i2;
        this.f6990f = bVar;
    }

    public static /* synthetic */ void a(e eVar, String str, int i2, String str2, long j2, EntityType entityType, boolean z, int i3, Object obj) {
        eVar.a(str, (i3 & 2) != 0 ? 0 : i2, str2, (i3 & 8) != 0 ? 0 : j2, entityType, z);
    }

    public final LiveData<Resource<ResourceState>> e() {
        return this.f6988d;
    }

    public final String f() {
        return this.f6990f.a();
    }

    public final void a(String str, int i2, String str2, long j2, EntityType entityType, boolean z) {
        j.b(str, "id");
        j.b(entityType, "entityType");
        if (i2 == 0 && entityType == EntityType.APP) {
            a.f4699b.a((Throwable) new IllegalAccessException("rateValue must not be zero. check it in your side"));
            return;
        }
        boolean z2 = true;
        if (this.f6990f.a().length() == 0) {
            if (!(str2 == null || str2.length() == 0)) {
                z2 = false;
            }
            if (!z2) {
                if (!z) {
                    g<Resource<ResourceState>> gVar = this.f6988d;
                    Resource resource = new Resource(PostCommentState.OpenNickName.f12173a, null, null, 6, null);
                    gVar.b(resource);
                }
            }
        }
        this.f6989e.a(str, i2, str2, j2, entityType);
        g<Resource<ResourceState>> gVar2 = this.f6988d;
        Resource resource2 = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
        gVar2.b(resource2);
    }
}
