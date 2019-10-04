package c.c.a.e.d.b;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.data.entity.LocalDownloadedApp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: c.c.a.e.d.b.h  reason: case insensitive filesystem */
/* compiled from: DownloadedAppDao_Impl */
class C0378h implements Callable<List<LocalDownloadedApp>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f4996a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0379i f4997b;

    public C0378h(C0379i iVar, x xVar) {
        this.f4997b = iVar;
        this.f4996a = xVar;
    }

    public void finalize() {
        this.f4996a.c();
    }

    public List<LocalDownloadedApp> call() {
        Cursor a2 = b.a(this.f4997b.f4998a, this.f4996a, false);
        try {
            int a3 = a.a(a2, "packageName");
            int a4 = a.a(a2, DefaultAppMeasurementEventListenerRegistrar.NAME);
            int a5 = a.a(a2, "packageWolf");
            int a6 = a.a(a2, "createdAt");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                LocalDownloadedApp localDownloadedApp = new LocalDownloadedApp(a2.getString(a3), a2.getString(a4), a2.getInt(a5) != 0, a2.getLong(a6));
                arrayList.add(localDownloadedApp);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }
}
