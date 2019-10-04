package c.c.a.e.d.m.a;

import android.database.Cursor;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import com.crashlytics.android.core.MetaDataStore;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PurchaseDao_Impl */
class n implements Callable<List<a>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f5265a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o f5266b;

    public n(o oVar, x xVar) {
        this.f5266b = oVar;
        this.f5265a = xVar;
    }

    public List<a> call() {
        Cursor a2 = b.a(this.f5266b.f5267a, this.f5265a, false);
        try {
            int a3 = a.a(a2, "purchaseToken");
            int a4 = a.a(a2, "state");
            int a5 = a.a(a2, MetaDataStore.KEY_USER_ID);
            int a6 = a.a(a2, "purchaseTime");
            int a7 = a.a(a2, "packageName");
            int a8 = a.a(a2, "productId");
            int a9 = a.a(a2, "productType");
            int a10 = a.a(a2, "jsonPurchaseInfo");
            int a11 = a.a(a2, "signature");
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                a aVar = new a(a2.getString(a3), a2.getInt(a4), a2.getString(a5), a2.getLong(a6), a2.getString(a7), a2.getString(a8), a2.getString(a9), a2.getString(a10), a2.getString(a11));
                arrayList.add(aVar);
            }
            return arrayList;
        } finally {
            a2.close();
            this.f5265a.c();
        }
    }
}
