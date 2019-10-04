package c.c.a.e.d.n.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: PlayedVideoDao_Impl */
class c extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f5297d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(e eVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5297d = eVar;
    }

    public String d() {
        return "DELETE FROM played_video";
    }
}
