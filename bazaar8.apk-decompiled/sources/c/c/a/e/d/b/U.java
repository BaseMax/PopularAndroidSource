package c.c.a.e.d.b;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: UpgradableAppDao_Impl */
class U implements Callable<List<LocalUpgradableApp>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f4955a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ V f4956b;

    public U(V v, x xVar) {
        this.f4956b = v;
        this.f4955a = xVar;
    }

    public void finalize() {
        this.f4955a.c();
    }

    public List<LocalUpgradableApp> call() {
        Cursor a2 = b.a(this.f4956b.f4957a, this.f4955a, false);
        try {
            int a3 = a.a(a2, "packageName");
            int a4 = a.a(a2, "versionCode");
            int a5 = a.a(a2, "packageWolf");
            int a6 = a.a(a2, "isNotified");
            int a7 = a.a(a2, "isUpdateEnabled");
            int a8 = a.a(a2, "lastUpdateTime");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                LocalUpgradableApp localUpgradableApp = new LocalUpgradableApp(a2.getString(a3), a2.getLong(a4), a2.getInt(a5) != 0, a2.getInt(a6) != 0, a2.getInt(a7) != 0, a2.getLong(a8));
                arrayList.add(localUpgradableApp);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }
}
