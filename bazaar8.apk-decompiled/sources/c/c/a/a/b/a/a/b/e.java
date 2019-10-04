package c.c.a.a.b.a.a.b;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ActionLogDao_Impl */
public final class e implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f4519a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f4520b;

    /* renamed from: c  reason: collision with root package name */
    public final C0355d f4521c;

    /* renamed from: d  reason: collision with root package name */
    public final C f4522d;

    public e(RoomDatabase roomDatabase) {
        this.f4519a = roomDatabase;
        this.f4520b = new b(this, roomDatabase);
        this.f4521c = new c(this, roomDatabase);
        this.f4522d = new d(this, roomDatabase);
    }

    public void a(i iVar) {
        this.f4519a.b();
        this.f4519a.c();
        try {
            this.f4520b.a(iVar);
            this.f4519a.o();
        } finally {
            this.f4519a.e();
        }
    }

    public void b(i iVar) {
        this.f4519a.b();
        this.f4519a.c();
        try {
            this.f4521c.a(iVar);
            this.f4519a.o();
        } finally {
            this.f4519a.e();
        }
    }

    public void c() {
        this.f4519a.b();
        f a2 = this.f4522d.a();
        this.f4519a.c();
        try {
            a2.l();
            this.f4519a.o();
        } finally {
            this.f4519a.e();
            this.f4522d.a(a2);
        }
    }

    public int d() {
        int i2 = 0;
        x a2 = x.a("SELECT COUNT(*) FROM actionLog", 0);
        this.f4519a.b();
        Cursor a3 = b.a(this.f4519a, a2, false);
        try {
            if (a3.moveToFirst()) {
                i2 = a3.getInt(0);
            }
            return i2;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public i a() {
        x a2 = x.a("SELECT * FROM actionLog ORDER BY `when` ASC LIMIT 1", 0);
        this.f4519a.b();
        Cursor a3 = b.a(this.f4519a, a2, false);
        try {
            return a3.moveToFirst() ? new i(a3.getLong(a.a(a3, "id")), a3.getLong(a.a(a3, "when")), a3.getString(a.a(a3, "json"))) : null;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public List<i> b() {
        x a2 = x.a("SELECT * FROM actionLog ORDER BY `when` DESC", 0);
        this.f4519a.b();
        Cursor a3 = b.a(this.f4519a, a2, false);
        try {
            int a4 = a.a(a3, "id");
            int a5 = a.a(a3, "when");
            int a6 = a.a(a3, "json");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                i iVar = new i(a3.getLong(a4), a3.getLong(a5), a3.getString(a6));
                arrayList.add(iVar);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
