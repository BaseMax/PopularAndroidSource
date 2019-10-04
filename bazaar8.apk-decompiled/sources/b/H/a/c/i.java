package b.H.a.c;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import b.C.a.e;
import b.C.a.f;
import b.z.C;
import b.z.C0356e;
import b.z.x;

/* compiled from: SystemIdInfoDao_Impl */
public final class i implements C0185f {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f1456a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f1457b;

    /* renamed from: c  reason: collision with root package name */
    public final C f1458c;

    public i(RoomDatabase roomDatabase) {
        this.f1456a = roomDatabase;
        this.f1457b = new g(this, roomDatabase);
        this.f1458c = new h(this, roomDatabase);
    }

    public void a(C0184e eVar) {
        this.f1456a.c();
        try {
            this.f1457b.a(eVar);
            this.f1456a.o();
        } finally {
            this.f1456a.e();
        }
    }

    public void b(String str) {
        f a2 = this.f1458c.a();
        this.f1456a.c();
        if (str == null) {
            try {
                a2.a(1);
            } catch (Throwable th) {
                this.f1456a.e();
                this.f1458c.a(a2);
                throw th;
            }
        } else {
            a2.a(1, str);
        }
        a2.l();
        this.f1456a.o();
        this.f1456a.e();
        this.f1458c.a(a2);
    }

    public C0184e a(String str) {
        x a2 = x.a("SELECT * FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        Cursor a3 = this.f1456a.a((e) a2);
        try {
            return a3.moveToFirst() ? new C0184e(a3.getString(a3.getColumnIndexOrThrow("work_spec_id")), a3.getInt(a3.getColumnIndexOrThrow("system_id"))) : null;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
