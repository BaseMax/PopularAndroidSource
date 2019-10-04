package c.c.a.e.d.r.b.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: CommentDao_Impl */
class e extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5380d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5380d = hVar;
    }

    public String d() {
        return "DELETE FROM comment WHERE entityId = ?";
    }
}
