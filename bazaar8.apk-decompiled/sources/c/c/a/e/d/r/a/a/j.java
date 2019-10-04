package c.c.a.e.d.r.a.a;

import com.farsitel.bazaar.data.entity.CommentAction;
import com.farsitel.bazaar.data.entity.CommentActionEntity;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.entity.EntityType;
import h.a.m;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: CommentActionLocalDataSource.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final a f5348a;

    public j(a aVar) {
        h.f.b.j.b(aVar, "commentActionDao");
        this.f5348a = aVar;
    }

    public static /* synthetic */ void a(j jVar, int i2, CommentAction commentAction, boolean z, EntityType entityType, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            entityType = EntityType.APP;
        }
        jVar.a(i2, commentAction, z, entityType);
    }

    public final List<CommentActionEntity> b() {
        List<l> a2 = this.f5348a.a(EntityDatabaseStatus.PENDING);
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (l a3 : a2) {
            arrayList.add(h.a(a3));
        }
        return arrayList;
    }

    public final void a(int i2, CommentAction commentAction, boolean z, EntityType entityType) {
        h.f.b.j.b(commentAction, "commentAction");
        h.f.b.j.b(entityType, "entityType");
        int i3 = i2;
        boolean z2 = z;
        l lVar = new l(null, i3, z2, entityType.ordinal(), commentAction.name(), null, 33, null);
        int i4 = i.f5346a[commentAction.ordinal()];
        if (i4 == 1 || i4 == 2) {
            this.f5348a.d(i2);
        } else if (i4 == 3) {
            this.f5348a.b(i2);
        }
        this.f5348a.a(lVar);
    }

    public final l b(int i2) {
        return this.f5348a.c(i2);
    }

    public final void a(int i2, CommentAction commentAction) {
        l lVar;
        h.f.b.j.b(commentAction, "commentAction");
        int i3 = i.f5347b[commentAction.ordinal()];
        if (i3 == 1 || i3 == 2) {
            lVar = b(i2);
        } else if (i3 == 3) {
            lVar = a(i2);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        if (lVar != null) {
            lVar.a(EntityDatabaseStatus.SENT);
            this.f5348a.b(lVar);
        }
    }

    public final l a(int i2) {
        return this.f5348a.a(i2);
    }

    public final void a() {
        this.f5348a.a();
    }
}
