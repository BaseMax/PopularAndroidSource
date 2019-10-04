package c.c.a.e.d.b;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;
import com.farsitel.bazaar.data.entity.LocalDownloadedApp;

/* renamed from: c.c.a.e.d.b.f  reason: case insensitive filesystem */
/* compiled from: DownloadedAppDao_Impl */
class C0376f extends C0356e<LocalDownloadedApp> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0379i f4994d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0376f(C0379i iVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f4994d = iVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `downloaded_app`(`packageName`,`name`,`packageWolf`,`createdAt`) VALUES (?,?,?,?)";
    }

    public void a(f fVar, LocalDownloadedApp localDownloadedApp) {
        if (localDownloadedApp.getPackageName() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, localDownloadedApp.getPackageName());
        }
        if (localDownloadedApp.getName() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, localDownloadedApp.getName());
        }
        fVar.a(3, localDownloadedApp.isFree() ? 1 : 0);
        fVar.a(4, localDownloadedApp.getCreatedAt());
    }
}
