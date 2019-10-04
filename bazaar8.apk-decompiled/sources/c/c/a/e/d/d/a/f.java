package c.c.a.e.d.d.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: BookmarkDao_Impl */
class f extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ i f5039d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5039d = iVar;
    }

    public String d() {
        return "DELETE FROM bookmark";
    }
}
