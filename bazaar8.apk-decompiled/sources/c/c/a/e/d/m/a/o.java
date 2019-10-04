package c.c.a.e.d.m.a;

import androidx.room.RoomDatabase;
import b.z.C;
import b.z.C0352a;
import b.z.C0356e;
import b.z.x;
import h.c.b;
import h.h;
import java.util.List;

/* compiled from: PurchaseDao_Impl */
public final class o implements f {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5267a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5268b;

    /* renamed from: c  reason: collision with root package name */
    public final C f5269c;

    /* renamed from: d  reason: collision with root package name */
    public final C f5270d;

    public o(RoomDatabase roomDatabase) {
        this.f5267a = roomDatabase;
        this.f5268b = new g(this, roomDatabase);
        this.f5269c = new h(this, roomDatabase);
        this.f5270d = new i(this, roomDatabase);
    }

    public Object a(List<a> list, b<? super h> bVar) {
        return C0352a.a(this.f5267a, true, new j(this, list), bVar);
    }

    public Object b(b<? super List<a>> bVar) {
        return C0352a.a(this.f5267a, false, new m(this, x.a("SELECT * FROM payments", 0)), bVar);
    }

    public Object a(b<? super h> bVar) {
        return C0352a.a(this.f5267a, true, new k(this), bVar);
    }

    public Object a(String str, String str2, b<? super h> bVar) {
        return C0352a.a(this.f5267a, true, new l(this, str, str2), bVar);
    }

    public Object a(String str, String str2, String str3, b<? super List<a>> bVar) {
        x a2 = x.a("SELECT * FROM payments WHERE userId = ? AND packageName = ? AND productType = ?", 3);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        if (str2 == null) {
            a2.a(2);
        } else {
            a2.a(2, str2);
        }
        if (str3 == null) {
            a2.a(3);
        } else {
            a2.a(3, str3);
        }
        return C0352a.a(this.f5267a, false, new n(this, a2), bVar);
    }
}
