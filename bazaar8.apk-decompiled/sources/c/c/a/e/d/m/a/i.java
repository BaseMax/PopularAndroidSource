package c.c.a.e.d.m.a;

import androidx.room.RoomDatabase;
import b.z.C;

/* compiled from: PurchaseDao_Impl */
class i extends C {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ o f5256d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(o oVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5256d = oVar;
    }

    public String d() {
        return "DELETE FROM payments WHERE packageName = ? AND purchaseToken = ?";
    }
}
