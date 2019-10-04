package c.c.a.e.d.d.a;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.a;
import b.z.x;
import c.c.a.e.f.b;
import c.c.a.e.f.e;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BookmarkDao_Impl */
public final class i implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5044a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5045b;

    /* renamed from: c  reason: collision with root package name */
    public final C0356e f5046c;

    /* renamed from: d  reason: collision with root package name */
    public final C0355d f5047d;

    /* renamed from: e  reason: collision with root package name */
    public final C f5048e;

    /* renamed from: f  reason: collision with root package name */
    public final C f5049f;

    public i(RoomDatabase roomDatabase) {
        this.f5044a = roomDatabase;
        this.f5045b = new b(this, roomDatabase);
        this.f5046c = new c(this, roomDatabase);
        this.f5047d = new d(this, roomDatabase);
        this.f5048e = new e(this, roomDatabase);
        this.f5049f = new f(this, roomDatabase);
    }

    public void b(j jVar) {
        this.f5044a.b();
        this.f5044a.c();
        try {
            this.f5047d.a(jVar);
            this.f5044a.o();
        } finally {
            this.f5044a.e();
        }
    }

    public void c(String str) {
        this.f5044a.b();
        f a2 = this.f5048e.a();
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        this.f5044a.c();
        try {
            a2.l();
            this.f5044a.o();
        } finally {
            this.f5044a.e();
            this.f5048e.a(a2);
        }
    }

    public void a(j jVar) {
        this.f5044a.b();
        this.f5044a.c();
        try {
            this.f5045b.a(jVar);
            this.f5044a.o();
        } finally {
            this.f5044a.e();
        }
    }

    public LiveData<String> b(String str) {
        x a2 = x.a("SELECT entityId from bookmark WHERE entityId = ? AND bookmarkStatus = 0", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        return this.f5044a.h().a(new String[]{"bookmark"}, false, new g(this, a2));
    }

    public void a(List<j> list) {
        this.f5044a.b();
        this.f5044a.c();
        try {
            this.f5046c.a(list);
            this.f5044a.o();
        } finally {
            this.f5044a.e();
        }
    }

    public void a() {
        this.f5044a.b();
        f a2 = this.f5049f.a();
        this.f5044a.c();
        try {
            a2.l();
            this.f5044a.o();
        } finally {
            this.f5044a.e();
            this.f5049f.a(a2);
        }
    }

    public LiveData<List<j>> a(BookmarkStatus bookmarkStatus) {
        x a2 = x.a("SELECT * FROM bookmark WHERE bookmarkStatus = ?", 1);
        Integer a3 = b.a(bookmarkStatus);
        if (a3 == null) {
            a2.a(1);
        } else {
            a2.a(1, (long) a3.intValue());
        }
        return this.f5044a.h().a(new String[]{"bookmark"}, false, new h(this, a2));
    }

    public List<j> a(EntityDatabaseStatus entityDatabaseStatus) {
        Integer num;
        x a2 = x.a("SELECT * FROM bookmark WHERE entityDatabaseStatus = ?", 1);
        Integer a3 = e.a(entityDatabaseStatus);
        if (a3 == null) {
            a2.a(1);
        } else {
            a2.a(1, (long) a3.intValue());
        }
        this.f5044a.b();
        Cursor a4 = b.z.b.b.a(this.f5044a, a2, false);
        try {
            int a5 = a.a(a4, "entityId");
            int a6 = a.a(a4, "iconUrl");
            int a7 = a.a(a4, "entityName");
            int a8 = a.a(a4, "price");
            int a9 = a.a(a4, "priceString");
            int a10 = a.a(a4, "bookmarkStatus");
            int a11 = a.a(a4, "entityDatabaseStatus");
            ArrayList arrayList = new ArrayList(a4.getCount());
            while (a4.moveToNext()) {
                String string = a4.getString(a5);
                String string2 = a4.getString(a6);
                String string3 = a4.getString(a7);
                int i2 = a4.getInt(a8);
                String string4 = a4.getString(a9);
                Integer num2 = null;
                if (a4.isNull(a10)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a4.getInt(a10));
                }
                BookmarkStatus a12 = b.a(num.intValue());
                if (!a4.isNull(a11)) {
                    num2 = Integer.valueOf(a4.getInt(a11));
                }
                j jVar = new j(string, string2, string3, i2, string4, a12, e.a(num2.intValue()));
                arrayList.add(jVar);
            }
            return arrayList;
        } finally {
            a4.close();
            a2.c();
        }
    }

    public j a(String str) {
        j jVar;
        Integer num;
        String str2 = str;
        x a2 = x.a("SELECT * FROM bookmark WHERE entityId = ?", 1);
        if (str2 == null) {
            a2.a(1);
        } else {
            a2.a(1, str2);
        }
        this.f5044a.b();
        Cursor a3 = b.z.b.b.a(this.f5044a, a2, false);
        try {
            int a4 = a.a(a3, "entityId");
            int a5 = a.a(a3, "iconUrl");
            int a6 = a.a(a3, "entityName");
            int a7 = a.a(a3, "price");
            int a8 = a.a(a3, "priceString");
            int a9 = a.a(a3, "bookmarkStatus");
            int a10 = a.a(a3, "entityDatabaseStatus");
            Integer num2 = null;
            if (a3.moveToFirst()) {
                String string = a3.getString(a4);
                String string2 = a3.getString(a5);
                String string3 = a3.getString(a6);
                int i2 = a3.getInt(a7);
                String string4 = a3.getString(a8);
                if (a3.isNull(a9)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a3.getInt(a9));
                }
                BookmarkStatus a11 = b.a(num.intValue());
                if (!a3.isNull(a10)) {
                    num2 = Integer.valueOf(a3.getInt(a10));
                }
                jVar = new j(string, string2, string3, i2, string4, a11, e.a(num2.intValue()));
            } else {
                jVar = null;
            }
            return jVar;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
