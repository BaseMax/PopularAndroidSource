package c.c.a.e.d.h.e.a.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: DownloadedVideoDao_Impl */
class d extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5109d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5109d = hVar;
    }

    public String d() {
        return "DELETE FROM downloadedVideo WHERE videoId = ?";
    }
}
