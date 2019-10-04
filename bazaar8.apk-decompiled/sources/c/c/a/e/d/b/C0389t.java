package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* renamed from: c.c.a.e.d.b.t  reason: case insensitive filesystem */
/* compiled from: MaliciousAppDao_Impl */
class C0389t extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0392w f5010d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0389t(C0392w wVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5010d = wVar;
    }

    public String d() {
        return "UPDATE malicious_app SET isNotified = 1";
    }
}
