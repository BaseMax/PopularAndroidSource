package c.c.a.e.d.b;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import com.farsitel.bazaar.data.entity.MaliciousAppEntity;
import java.util.ArrayList;
import java.util.List;

/* renamed from: c.c.a.e.d.b.w  reason: case insensitive filesystem */
/* compiled from: MaliciousAppDao_Impl */
public final class C0392w implements C0385o {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5014a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5015b;

    /* renamed from: c  reason: collision with root package name */
    public final C0355d f5016c;

    /* renamed from: d  reason: collision with root package name */
    public final C f5017d;

    /* renamed from: e  reason: collision with root package name */
    public final C f5018e;

    /* renamed from: f  reason: collision with root package name */
    public final C f5019f;

    /* renamed from: g  reason: collision with root package name */
    public final C f5020g;

    public C0392w(RoomDatabase roomDatabase) {
        this.f5014a = roomDatabase;
        this.f5015b = new C0386p(this, roomDatabase);
        this.f5016c = new C0387q(this, roomDatabase);
        this.f5017d = new r(this, roomDatabase);
        this.f5018e = new C0388s(this, roomDatabase);
        this.f5019f = new C0389t(this, roomDatabase);
        this.f5020g = new C0390u(this, roomDatabase);
    }

    public List<MaliciousAppEntity> b() {
        x a2 = x.a("SELECT * FROM malicious_app WHERE isNotified = 0", 0);
        this.f5014a.b();
        Cursor a3 = b.a(this.f5014a, a2, false);
        try {
            int a4 = a.a(a3, "packageName");
            int a5 = a.a(a3, "versionName");
            int a6 = a.a(a3, "versionCode");
            int a7 = a.a(a3, "reasonTitle");
            int a8 = a.a(a3, "reasonInfo");
            int a9 = a.a(a3, "isNotified");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                MaliciousAppEntity maliciousAppEntity = new MaliciousAppEntity(a3.getString(a4), a3.getString(a5), a3.getLong(a6), a3.getString(a7), a3.getString(a8), a3.getInt(a9) != 0);
                arrayList.add(maliciousAppEntity);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void c() {
        this.f5014a.b();
        f a2 = this.f5019f.a();
        this.f5014a.c();
        try {
            a2.l();
            this.f5014a.o();
        } finally {
            this.f5014a.e();
            this.f5019f.a(a2);
        }
    }

    public void clear() {
        this.f5014a.b();
        f a2 = this.f5020g.a();
        this.f5014a.c();
        try {
            a2.l();
            this.f5014a.o();
        } finally {
            this.f5014a.e();
            this.f5020g.a(a2);
        }
    }

    public List<MaliciousAppEntity> d() {
        x a2 = x.a("SELECT * FROM malicious_app", 0);
        this.f5014a.b();
        Cursor a3 = b.a(this.f5014a, a2, false);
        try {
            int a4 = a.a(a3, "packageName");
            int a5 = a.a(a3, "versionName");
            int a6 = a.a(a3, "versionCode");
            int a7 = a.a(a3, "reasonTitle");
            int a8 = a.a(a3, "reasonInfo");
            int a9 = a.a(a3, "isNotified");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                MaliciousAppEntity maliciousAppEntity = new MaliciousAppEntity(a3.getString(a4), a3.getString(a5), a3.getLong(a6), a3.getString(a7), a3.getString(a8), a3.getInt(a9) != 0);
                arrayList.add(maliciousAppEntity);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void delete(String str) {
        this.f5014a.b();
        f a2 = this.f5017d.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        this.f5014a.c();
        try {
            a2.l();
            this.f5014a.o();
        } finally {
            this.f5014a.e();
            this.f5017d.a(a2);
        }
    }

    public void a(List<MaliciousAppEntity> list) {
        this.f5014a.b();
        this.f5014a.c();
        try {
            this.f5015b.a(list);
            this.f5014a.o();
        } finally {
            this.f5014a.e();
        }
    }

    public void a(String str, long j2) {
        this.f5014a.b();
        f a2 = this.f5018e.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        a2.a(2, j2);
        this.f5014a.c();
        try {
            a2.l();
            this.f5014a.o();
        } finally {
            this.f5014a.e();
            this.f5018e.a(a2);
        }
    }

    public LiveData<List<MaliciousAppEntity>> a() {
        x a2 = x.a("SELECT * FROM malicious_app", 0);
        return this.f5014a.h().a(new String[]{"malicious_app"}, false, new C0391v(this, a2));
    }
}
