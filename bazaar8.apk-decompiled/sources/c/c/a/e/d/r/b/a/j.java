package c.c.a.e.d.r.b.a;

import androidx.lifecycle.LiveData;
import b.r.D;
import com.farsitel.bazaar.data.entity.CommentEntity;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;
import com.farsitel.bazaar.data.entity.LocalCommentEntityKt;
import h.a.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PostCommentLocalDataSource.kt */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final a f5391a;

    public j(a aVar) {
        h.f.b.j.b(aVar, "commentDao");
        this.f5391a = aVar;
    }

    public final void a(String str, int i2, String str2, long j2, EntityType entityType) {
        h.f.b.j.b(str, "entityId");
        EntityType entityType2 = entityType;
        h.f.b.j.b(entityType2, "entityType");
        LocalCommentEntity localCommentEntity = new LocalCommentEntity(null, str, j2, str2, i2, entityType2, null, 65, null);
        this.f5391a.b(localCommentEntity);
    }

    public final List<CommentEntity> b() {
        List<LocalCommentEntity> a2 = this.f5391a.a(EntityDatabaseStatus.PENDING);
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (LocalCommentEntity commentEntity : a2) {
            arrayList.add(LocalCommentEntityKt.toCommentEntity(commentEntity));
        }
        return arrayList;
    }

    public final void c(String str) {
        h.f.b.j.b(str, "entityId");
        LocalCommentEntity b2 = this.f5391a.b(str);
        if (b2 != null) {
            b2.setEntityDatabaseStatus(EntityDatabaseStatus.SENT);
            this.f5391a.a(b2);
        }
        a aVar = this.f5391a;
    }

    public final LiveData<Integer> a(String str) {
        h.f.b.j.b(str, "entityId");
        LiveData<Integer> a2 = D.a(this.f5391a.a(str), i.f5390a);
        h.f.b.j.a((Object) a2, "Transformations.map(comm…  it?.rate ?: 0\n        }");
        return a2;
    }

    public final void a() {
        this.f5391a.a();
    }

    public final int b(String str) {
        h.f.b.j.b(str, "entityId");
        LocalCommentEntity b2 = this.f5391a.b(str);
        if (b2 != null) {
            return b2.getRate();
        }
        return 0;
    }
}
