package c.c.a.e.d.m.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0356e;

/* compiled from: PurchaseDao_Impl */
class g extends C0356e<a> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ o f5254d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(o oVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5254d = oVar;
    }

    public String d() {
        return "INSERT OR REPLACE INTO `payments`(`purchaseToken`,`state`,`userId`,`purchaseTime`,`packageName`,`productId`,`productType`,`jsonPurchaseInfo`,`signature`) VALUES (?,?,?,?,?,?,?,?,?)";
    }

    public void a(f fVar, a aVar) {
        if (aVar.f() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, aVar.f());
        }
        fVar.a(2, (long) aVar.h());
        if (aVar.i() == null) {
            fVar.a(3);
        } else {
            fVar.a(3, aVar.i());
        }
        fVar.a(4, aVar.e());
        if (aVar.b() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, aVar.b());
        }
        if (aVar.c() == null) {
            fVar.a(6);
        } else {
            fVar.a(6, aVar.c());
        }
        if (aVar.d() == null) {
            fVar.a(7);
        } else {
            fVar.a(7, aVar.d());
        }
        if (aVar.a() == null) {
            fVar.a(8);
        } else {
            fVar.a(8, aVar.a());
        }
        if (aVar.g() == null) {
            fVar.a(9);
        } else {
            fVar.a(9, aVar.g());
        }
    }
}
