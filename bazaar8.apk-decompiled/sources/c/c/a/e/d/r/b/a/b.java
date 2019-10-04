package c.c.a.e.d.r.b.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import c.c.a.e.f.e;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;

/* compiled from: CommentDao_Impl */
class b extends C0356e<LocalCommentEntity> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5377d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5377d = hVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `comment`(`id`,`entityId`,`entityVersion`,`text`,`rate`,`entityType`,`entityDatabaseStatus`) VALUES (?,?,?,?,?,?,?)";
    }

    public void a(f fVar, LocalCommentEntity localCommentEntity) {
        if (localCommentEntity.getId() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, localCommentEntity.getId().longValue());
        }
        if (localCommentEntity.getEntityId() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, localCommentEntity.getEntityId());
        }
        fVar.a(3, localCommentEntity.getEntityVersion());
        if (localCommentEntity.getText() == null) {
            fVar.a(4);
        } else {
            fVar.a(4, localCommentEntity.getText());
        }
        fVar.a(5, (long) localCommentEntity.getRate());
        Integer a2 = c.c.a.e.f.f.a(localCommentEntity.getEntityType());
        if (a2 == null) {
            fVar.a(6);
        } else {
            fVar.a(6, (long) a2.intValue());
        }
        Integer a3 = e.a(localCommentEntity.getEntityDatabaseStatus());
        if (a3 == null) {
            fVar.a(7);
        } else {
            fVar.a(7, (long) a3.intValue());
        }
    }
}
