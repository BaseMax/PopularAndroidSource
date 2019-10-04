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
import com.farsitel.bazaar.data.entity.LocalUpgradableApp;
import java.util.ArrayList;
import java.util.List;

/* compiled from: UpgradableAppDao_Impl */
public final class V implements L {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f4957a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f4958b;

    /* renamed from: c  reason: collision with root package name */
    public final C0356e f4959c;

    /* renamed from: d  reason: collision with root package name */
    public final C0355d f4960d;

    /* renamed from: e  reason: collision with root package name */
    public final C f4961e;

    /* renamed from: f  reason: collision with root package name */
    public final C f4962f;

    /* renamed from: g  reason: collision with root package name */
    public final C f4963g;

    /* renamed from: h  reason: collision with root package name */
    public final C f4964h;

    public V(RoomDatabase roomDatabase) {
        this.f4957a = roomDatabase;
        this.f4958b = new M(this, roomDatabase);
        this.f4959c = new N(this, roomDatabase);
        this.f4960d = new O(this, roomDatabase);
        this.f4961e = new P(this, roomDatabase);
        this.f4962f = new Q(this, roomDatabase);
        this.f4963g = new S(this, roomDatabase);
        this.f4964h = new T(this, roomDatabase);
    }

    public List<LocalUpgradableApp> b() {
        x a2 = x.a("SELECT * FROM upgradable_app WHERE isUpdateEnabled = 1 AND isNotified = 0", 0);
        this.f4957a.b();
        Cursor a3 = b.a(this.f4957a, a2, false);
        try {
            int a4 = a.a(a3, "packageName");
            int a5 = a.a(a3, "versionCode");
            int a6 = a.a(a3, "packageWolf");
            int a7 = a.a(a3, "isNotified");
            int a8 = a.a(a3, "isUpdateEnabled");
            int a9 = a.a(a3, "lastUpdateTime");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                LocalUpgradableApp localUpgradableApp = new LocalUpgradableApp(a3.getString(a4), a3.getLong(a5), a3.getInt(a6) != 0, a3.getInt(a7) != 0, a3.getInt(a8) != 0, a3.getLong(a9));
                arrayList.add(localUpgradableApp);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void c() {
        this.f4957a.b();
        f a2 = this.f4963g.a();
        this.f4957a.c();
        try {
            a2.l();
            this.f4957a.o();
        } finally {
            this.f4957a.e();
            this.f4963g.a(a2);
        }
    }

    public void clear() {
        this.f4957a.b();
        f a2 = this.f4964h.a();
        this.f4957a.c();
        try {
            a2.l();
            this.f4957a.o();
        } finally {
            this.f4957a.e();
            this.f4964h.a(a2);
        }
    }

    public List<LocalUpgradableApp> d() {
        x a2 = x.a("SELECT * FROM upgradable_app", 0);
        this.f4957a.b();
        Cursor a3 = b.a(this.f4957a, a2, false);
        try {
            int a4 = a.a(a3, "packageName");
            int a5 = a.a(a3, "versionCode");
            int a6 = a.a(a3, "packageWolf");
            int a7 = a.a(a3, "isNotified");
            int a8 = a.a(a3, "isUpdateEnabled");
            int a9 = a.a(a3, "lastUpdateTime");
            ArrayList arrayList = new ArrayList(a3.getCount());
            while (a3.moveToNext()) {
                LocalUpgradableApp localUpgradableApp = new LocalUpgradableApp(a3.getString(a4), a3.getLong(a5), a3.getInt(a6) != 0, a3.getInt(a7) != 0, a3.getInt(a8) != 0, a3.getLong(a9));
                arrayList.add(localUpgradableApp);
            }
            return arrayList;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void delete(String str) {
        this.f4957a.b();
        f a2 = this.f4961e.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        this.f4957a.c();
        try {
            a2.l();
            this.f4957a.o();
        } finally {
            this.f4957a.e();
            this.f4961e.a(a2);
        }
    }

    public void a(List<LocalUpgradableApp> list) {
        this.f4957a.b();
        this.f4957a.c();
        try {
            this.f4958b.a(list);
            this.f4957a.o();
        } finally {
            this.f4957a.e();
        }
    }

    public void a(LocalUpgradableApp localUpgradableApp) {
        this.f4957a.b();
        this.f4957a.c();
        try {
            this.f4959c.a(localUpgradableApp);
            this.f4957a.o();
        } finally {
            this.f4957a.e();
        }
    }

    public void a(String str, long j2) {
        this.f4957a.b();
        f a2 = this.f4962f.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        a2.a(2, j2);
        this.f4957a.c();
        try {
            a2.l();
            this.f4957a.o();
        } finally {
            this.f4957a.e();
            this.f4962f.a(a2);
        }
    }

    public Long b(String str) {
        x a2 = x.a("SELECT versionCode FROM upgradable_app WHERE packageName = ?", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        this.f4957a.b();
        Cursor a3 = b.a(this.f4957a, a2, false);
        try {
            Long l2 = null;
            if (a3.moveToFirst()) {
                if (!a3.isNull(0)) {
                    l2 = Long.valueOf(a3.getLong(0));
                }
            }
            return l2;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public LiveData<List<LocalUpgradableApp>> a() {
        x a2 = x.a("SELECT * FROM upgradable_app ORDER BY packageName", 0);
        return this.f4957a.h().a(new String[]{"upgradable_app"}, false, new U(this, a2));
    }

    public LocalUpgradableApp a(String str) {
        LocalUpgradableApp localUpgradableApp;
        String str2 = str;
        x a2 = x.a("SELECT * FROM upgradable_app WHERE packageName = ?", 1);
        if (str2 == null) {
            a2.a(1);
        } else {
            a2.a(1, str2);
        }
        this.f4957a.b();
        Cursor a3 = b.a(this.f4957a, a2, false);
        try {
            int a4 = a.a(a3, "packageName");
            int a5 = a.a(a3, "versionCode");
            int a6 = a.a(a3, "packageWolf");
            int a7 = a.a(a3, "isNotified");
            int a8 = a.a(a3, "isUpdateEnabled");
            int a9 = a.a(a3, "lastUpdateTime");
            if (a3.moveToFirst()) {
                localUpgradableApp = new LocalUpgradableApp(a3.getString(a4), a3.getLong(a5), a3.getInt(a6) != 0, a3.getInt(a7) != 0, a3.getInt(a8) != 0, a3.getLong(a9));
            } else {
                localUpgradableApp = null;
            }
            return localUpgradableApp;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
