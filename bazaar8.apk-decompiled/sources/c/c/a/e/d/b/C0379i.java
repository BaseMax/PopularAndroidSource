package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.z.C;
import b.z.C0356e;
import b.z.x;
import com.farsitel.bazaar.data.entity.LocalDownloadedApp;
import java.util.List;

/* renamed from: c.c.a.e.d.b.i  reason: case insensitive filesystem */
/* compiled from: DownloadedAppDao_Impl */
public final class C0379i implements C0375e {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f4998a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f4999b;

    /* renamed from: c  reason: collision with root package name */
    public final C f5000c;

    public C0379i(RoomDatabase roomDatabase) {
        this.f4998a = roomDatabase;
        this.f4999b = new C0376f(this, roomDatabase);
        this.f5000c = new C0377g(this, roomDatabase);
    }

    public void a(LocalDownloadedApp localDownloadedApp) {
        this.f4998a.b();
        this.f4998a.c();
        try {
            this.f4999b.a(localDownloadedApp);
            this.f4998a.o();
        } finally {
            this.f4998a.e();
        }
    }

    public LiveData<List<LocalDownloadedApp>> a() {
        x a2 = x.a("SELECT * FROM downloaded_app ORDER BY createdAt DESC", 0);
        return this.f4998a.h().a(new String[]{"downloaded_app"}, false, new C0378h(this, a2));
    }
}
