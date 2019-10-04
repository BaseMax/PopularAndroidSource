package c.c.a.e.d.r.b.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;

/* compiled from: CommentDao_Impl */
class c extends C0355d<LocalCommentEntity> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5378d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5378d = hVar;
    }

    public String d() {
        return "DELETE FROM `comment` WHERE `id` = ?";
    }

    public void a(f fVar, LocalCommentEntity localCommentEntity) {
        if (localCommentEntity.getId() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, localCommentEntity.getId().longValue());
        }
    }
}
