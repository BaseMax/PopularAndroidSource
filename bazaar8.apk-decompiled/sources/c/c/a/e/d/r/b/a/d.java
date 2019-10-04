package c.c.a.e.d.r.b.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;
import c.c.a.e.f.e;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;

/* compiled from: CommentDao_Impl */
class d extends C0355d<LocalCommentEntity> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5379d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5379d = hVar;
    }

    public String d() {
        return "UPDATE OR ABORT `comment` SET `id` = ?,`entityId` = ?,`entityVersion` = ?,`text` = ?,`rate` = ?,`entityType` = ?,`entityDatabaseStatus` = ? WHERE `id` = ?";
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
        if (localCommentEntity.getId() == null) {
            fVar.a(8);
        } else {
            fVar.a(8, localCommentEntity.getId().longValue());
        }
    }
}
