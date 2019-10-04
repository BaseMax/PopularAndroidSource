package c.c.a.e.d.b;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import com.farsitel.bazaar.data.entity.MaliciousAppEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: c.c.a.e.d.b.v  reason: case insensitive filesystem */
/* compiled from: MaliciousAppDao_Impl */
class C0391v implements Callable<List<MaliciousAppEntity>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5012a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0392w f5013b;

    public C0391v(C0392w wVar, x xVar) {
        this.f5013b = wVar;
        this.f5012a = xVar;
    }

    public void finalize() {
        this.f5012a.c();
    }

    public List<MaliciousAppEntity> call() {
        Cursor a2 = b.a(this.f5013b.f5014a, this.f5012a, false);
        try {
            int a3 = a.a(a2, "packageName");
            int a4 = a.a(a2, "versionName");
            int a5 = a.a(a2, "versionCode");
            int a6 = a.a(a2, "reasonTitle");
            int a7 = a.a(a2, "reasonInfo");
            int a8 = a.a(a2, "isNotified");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                MaliciousAppEntity maliciousAppEntity = new MaliciousAppEntity(a2.getString(a3), a2.getString(a4), a2.getLong(a5), a2.getString(a6), a2.getString(a7), a2.getInt(a8) != 0);
                arrayList.add(maliciousAppEntity);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }
}
