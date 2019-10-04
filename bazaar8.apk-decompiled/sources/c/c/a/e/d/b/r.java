package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: MaliciousAppDao_Impl */
class r extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0392w f5008d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public r(C0392w wVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5008d = wVar;
    }

    public String d() {
        return "DELETE FROM malicious_app WHERE packageName = ?";
    }
}
