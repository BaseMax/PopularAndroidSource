package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* renamed from: c.c.a.e.d.b.s  reason: case insensitive filesystem */
/* compiled from: MaliciousAppDao_Impl */
class C0388s extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0392w f5009d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0388s(C0392w wVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5009d = wVar;
    }

    public String d() {
        return "DELETE FROM malicious_app WHERE packageName = ? and versionCode = ?";
    }
}
