package c.c.a.e.d.r.a.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import c.c.a.e.f.e;

/* compiled from: CommentActionDao_Impl */
class b extends C0356e<l> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f5335d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(g gVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5335d = gVar;
    }

    public String d() {
        return "INSERT OR ABORT INTO `commentAction`(`id`,`reviewId`,`isReply`,`entityType`,`commentActionName`,`entityDatabaseStatus`) VALUES (?,?,?,?,?,?)";
    }

    public void a(f fVar, l lVar) {
        if (lVar.d() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, lVar.d().longValue());
        }
        fVar.a(2, (long) lVar.e());
        fVar.a(3, lVar.f() ? 1 : 0);
        fVar.a(4, (long) lVar.c());
        if (lVar.a() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, lVar.a());
        }
        Integer a2 = e.a(lVar.b());
        if (a2 == null) {
            fVar.a(6);
        } else {
            fVar.a(6, (long) a2.intValue());
        }
    }
}
