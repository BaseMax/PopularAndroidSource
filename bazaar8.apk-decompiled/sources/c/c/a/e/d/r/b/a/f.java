package c.c.a.e.d.r.b.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: CommentDao_Impl */
class f extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5381d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5381d = hVar;
    }

    public String d() {
        return "DELETE FROM comment";
    }
}
