package c.c.a.e.d.m.a;

import androidx.room.RoomDatabase;
import b.z.b.d;
import b.z.w;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.data.feature.payment.local.PaymentDatabase_Impl;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: PaymentDatabase_Impl */
class b extends w.a {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ PaymentDatabase_Impl f5241b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(PaymentDatabase_Impl paymentDatabase_Impl, int i2) {
        super(i2);
        this.f5241b = paymentDatabase_Impl;
    }

    public void a(b.C.a.b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS `payments` (`purchaseToken` TEXT NOT NULL, `state` INTEGER NOT NULL, `userId` TEXT NOT NULL, `purchaseTime` INTEGER NOT NULL, `packageName` TEXT NOT NULL, `productId` TEXT NOT NULL, `productType` TEXT NOT NULL, `jsonPurchaseInfo` TEXT NOT NULL, `signature` TEXT NOT NULL, PRIMARY KEY(`purchaseToken`))");
        bVar.b("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        bVar.b("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '51c4b7ade068c49616a702f2f9419546')");
    }

    public void b(b.C.a.b bVar) {
        bVar.b("DROP TABLE IF EXISTS `payments`");
    }

    public void c(b.C.a.b bVar) {
        if (this.f5241b.f944h != null) {
            int size = this.f5241b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f5241b.f944h.get(i2)).a(bVar);
            }
        }
    }

    public void d(b.C.a.b bVar) {
        b.C.a.b unused = this.f5241b.f937a = bVar;
        this.f5241b.a(bVar);
        if (this.f5241b.f944h != null) {
            int size = this.f5241b.f944h.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((RoomDatabase.b) this.f5241b.f944h.get(i2)).b(bVar);
            }
        }
    }

    public void e(b.C.a.b bVar) {
    }

    public void f(b.C.a.b bVar) {
        b.z.b.b.a(bVar);
    }

    public void g(b.C.a.b bVar) {
        HashMap hashMap = new HashMap(9);
        hashMap.put("purchaseToken", new d.a("purchaseToken", "TEXT", true, 1));
        hashMap.put("state", new d.a("state", "INTEGER", true, 0));
        hashMap.put(MetaDataStore.KEY_USER_ID, new d.a(MetaDataStore.KEY_USER_ID, "TEXT", true, 0));
        hashMap.put("purchaseTime", new d.a("purchaseTime", "INTEGER", true, 0));
        hashMap.put("packageName", new d.a("packageName", "TEXT", true, 0));
        hashMap.put("productId", new d.a("productId", "TEXT", true, 0));
        hashMap.put("productType", new d.a("productType", "TEXT", true, 0));
        hashMap.put("jsonPurchaseInfo", new d.a("jsonPurchaseInfo", "TEXT", true, 0));
        hashMap.put("signature", new d.a("signature", "TEXT", true, 0));
        d dVar = new d("payments", hashMap, new HashSet(0), new HashSet(0));
        d a2 = d.a(bVar, "payments");
        if (!dVar.equals(a2)) {
            throw new IllegalStateException("Migration didn't properly handle payments(com.farsitel.bazaar.data.feature.payment.local.LocalPurchase).\n Expected:\n" + dVar + "\n Found:\n" + a2);
        }
    }
}
