package c.c.a.e.d.r.a.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: CommentActionDao_Impl */
class d extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f5337d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(g gVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5337d = gVar;
    }

    public String d() {
        return "DELETE FROM commentAction WHERE reviewId = ? and commentActionName = 'REPORT'";
    }
}
