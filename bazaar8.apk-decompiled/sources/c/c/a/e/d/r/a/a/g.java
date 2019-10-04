package c.c.a.e.d.r.a.a;

import android.database.Cursor;
import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.e;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CommentActionDao_Impl */
public final class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5340a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5341b;

    /* renamed from: c  reason: collision with root package name */
    public final C0355d f5342c;

    /* renamed from: d  reason: collision with root package name */
    public final C f5343d;

    /* renamed from: e  reason: collision with root package name */
    public final C f5344e;

    /* renamed from: f  reason: collision with root package name */
    public final C f5345f;

    public g(RoomDatabase roomDatabase) {
        this.f5340a = roomDatabase;
        this.f5341b = new b(this, roomDatabase);
        this.f5342c = new c(this, roomDatabase);
        this.f5343d = new d(this, roomDatabase);
        this.f5344e = new e(this, roomDatabase);
        this.f5345f = new f(this, roomDatabase);
    }

    public void a(l lVar) {
        this.f5340a.b();
        this.f5340a.c();
        try {
            this.f5341b.a(lVar);
            this.f5340a.o();
        } finally {
            this.f5340a.e();
        }
    }

    public void b(l lVar) {
        this.f5340a.b();
        this.f5340a.c();
        try {
            this.f5342c.a(lVar);
            this.f5340a.o();
        } finally {
            this.f5340a.e();
        }
    }

    public l c(int i2) {
        l lVar;
        Long l2;
        x a2 = x.a("SELECT * FROM commentAction WHERE reviewId = ? and (commentActionName = 'UP_VOTE' or commentActionName= 'DOWN_VOTE') LIMIT 1", 1);
        a2.a(1, (long) i2);
        this.f5340a.b();
        Cursor a3 = b.a(this.f5340a, a2, false);
        try {
            int a4 = a.a(a3, "id");
            int a5 = a.a(a3, "reviewId");
            int a6 = a.a(a3, "isReply");
            int a7 = a.a(a3, "entityType");
            int a8 = a.a(a3, "commentActionName");
            int a9 = a.a(a3, "entityDatabaseStatus");
            Integer num = null;
            if (a3.moveToFirst()) {
                if (a3.isNull(a4)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a3.getLong(a4));
                }
                int i3 = a3.getInt(a5);
                boolean z = a3.getInt(a6) != 0;
                int i4 = a3.getInt(a7);
                String string = a3.getString(a8);
                if (!a3.isNull(a9)) {
                    num = Integer.valueOf(a3.getInt(a9));
                }
                lVar = new l(l2, i3, z, i4, string, e.a(num.intValue()));
            } else {
                lVar = null;
            }
            return lVar;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void d(int i2) {
        this.f5340a.b();
        f a2 = this.f5344e.a();
        a2.a(1, (long) i2);
        this.f5340a.c();
        try {
            a2.l();
            this.f5340a.o();
        } finally {
            this.f5340a.e();
            this.f5344e.a(a2);
        }
    }

    public void a() {
        this.f5340a.b();
        f a2 = this.f5345f.a();
        this.f5340a.c();
        try {
            a2.l();
            this.f5340a.o();
        } finally {
            this.f5340a.e();
            this.f5345f.a(a2);
        }
    }

    public void b(int i2) {
        this.f5340a.b();
        f a2 = this.f5343d.a();
        a2.a(1, (long) i2);
        this.f5340a.c();
        try {
            a2.l();
            this.f5340a.o();
        } finally {
            this.f5340a.e();
            this.f5343d.a(a2);
        }
    }

    public List<l> a(EntityDatabaseStatus entityDatabaseStatus) {
        Long l2;
        x a2 = x.a("SELECT * FROM commentAction WHERE entityDatabaseStatus = ?", 1);
        Integer a3 = e.a(entityDatabaseStatus);
        if (a3 == null) {
            a2.a(1);
        } else {
            a2.a(1, (long) a3.intValue());
        }
        this.f5340a.b();
        Cursor a4 = b.a(this.f5340a, a2, false);
        try {
            int a5 = a.a(a4, "id");
            int a6 = a.a(a4, "reviewId");
            int a7 = a.a(a4, "isReply");
            int a8 = a.a(a4, "entityType");
            int a9 = a.a(a4, "commentActionName");
            int a10 = a.a(a4, "entityDatabaseStatus");
            ArrayList arrayList = new ArrayList(a4.getCount());
            while (a4.moveToNext()) {
                Integer num = null;
                if (a4.isNull(a5)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a4.getLong(a5));
                }
                int i2 = a4.getInt(a6);
                boolean z = a4.getInt(a7) != 0;
                int i3 = a4.getInt(a8);
                String string = a4.getString(a9);
                if (!a4.isNull(a10)) {
                    num = Integer.valueOf(a4.getInt(a10));
                }
                l lVar = new l(l2, i2, z, i3, string, e.a(num.intValue()));
                arrayList.add(lVar);
            }
            return arrayList;
        } finally {
            a4.close();
            a2.c();
        }
    }

    public l a(int i2) {
        l lVar;
        Long l2;
        x a2 = x.a("SELECT * FROM commentAction WHERE reviewId = ? and commentActionName = 'REPORT' LIMIT 1", 1);
        a2.a(1, (long) i2);
        this.f5340a.b();
        Cursor a3 = b.a(this.f5340a, a2, false);
        try {
            int a4 = a.a(a3, "id");
            int a5 = a.a(a3, "reviewId");
            int a6 = a.a(a3, "isReply");
            int a7 = a.a(a3, "entityType");
            int a8 = a.a(a3, "commentActionName");
            int a9 = a.a(a3, "entityDatabaseStatus");
            Integer num = null;
            if (a3.moveToFirst()) {
                if (a3.isNull(a4)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a3.getLong(a4));
                }
                int i3 = a3.getInt(a5);
                boolean z = a3.getInt(a6) != 0;
                int i4 = a3.getInt(a7);
                String string = a3.getString(a8);
                if (!a3.isNull(a9)) {
                    num = Integer.valueOf(a3.getInt(a9));
                }
                lVar = new l(l2, i3, z, i4, string, e.a(num.intValue()));
            } else {
                lVar = null;
            }
            return lVar;
        } finally {
            a3.close();
            a2.c();
        }
    }
}
