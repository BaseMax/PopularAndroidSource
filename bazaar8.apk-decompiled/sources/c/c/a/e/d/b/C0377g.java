package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.z.C;

/* renamed from: c.c.a.e.d.b.g  reason: case insensitive filesystem */
/* compiled from: DownloadedAppDao_Impl */
class C0377g extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0379i f4995d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0377g(C0379i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4995d = iVar;
    }

    public String d() {
        return "DELETE FROM downloaded_app WHERE packageName = ?";
    }
}
