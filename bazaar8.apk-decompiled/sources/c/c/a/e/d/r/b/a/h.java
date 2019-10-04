package c.c.a.e.d.r.b.a;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import b.z.C;
import b.z.C0355d;
import b.z.C0356e;
import b.z.b.a;
import b.z.b.b;
import b.z.x;
import c.c.a.e.f.e;
import c.c.a.e.f.f;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.LocalCommentEntity;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CommentDao_Impl */
public final class h implements a {

    /* renamed from: a  reason: collision with root package name */
    public final RoomDatabase f5384a;

    /* renamed from: b  reason: collision with root package name */
    public final C0356e f5385b;

    /* renamed from: c  reason: collision with root package name */
    public final C0355d f5386c;

    /* renamed from: d  reason: collision with root package name */
    public final C0355d f5387d;

    /* renamed from: e  reason: collision with root package name */
    public final C f5388e;

    /* renamed from: f  reason: collision with root package name */
    public final C f5389f;

    public h(RoomDatabase roomDatabase) {
        this.f5384a = roomDatabase;
        this.f5385b = new b(this, roomDatabase);
        this.f5386c = new c(this, roomDatabase);
        this.f5387d = new d(this, roomDatabase);
        this.f5388e = new e(this, roomDatabase);
        this.f5389f = new f(this, roomDatabase);
    }

    public void b(LocalCommentEntity localCommentEntity) {
        this.f5384a.b();
        this.f5384a.c();
        try {
            this.f5385b.a(localCommentEntity);
            this.f5384a.o();
        } finally {
            this.f5384a.e();
        }
    }

    public void a(LocalCommentEntity localCommentEntity) {
        this.f5384a.b();
        this.f5384a.c();
        try {
            this.f5387d.a(localCommentEntity);
            this.f5384a.o();
        } finally {
            this.f5384a.e();
        }
    }

    public LocalCommentEntity b(String str) {
        LocalCommentEntity localCommentEntity;
        Long l2;
        Integer num;
        String str2 = str;
        x a2 = x.a("SELECT * FROM comment WHERE entityId = ? LIMIT 1", 1);
        if (str2 == null) {
            a2.a(1);
        } else {
            a2.a(1, str2);
        }
        this.f5384a.b();
        Cursor a3 = b.a(this.f5384a, a2, false);
        try {
            int a4 = a.a(a3, "id");
            int a5 = a.a(a3, "entityId");
            int a6 = a.a(a3, "entityVersion");
            int a7 = a.a(a3, "text");
            int a8 = a.a(a3, "rate");
            int a9 = a.a(a3, "entityType");
            int a10 = a.a(a3, "entityDatabaseStatus");
            Integer num2 = null;
            if (a3.moveToFirst()) {
                if (a3.isNull(a4)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a3.getLong(a4));
                }
                String string = a3.getString(a5);
                long j2 = a3.getLong(a6);
                String string2 = a3.getString(a7);
                int i2 = a3.getInt(a8);
                if (a3.isNull(a9)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a3.getInt(a9));
                }
                EntityType a11 = f.a(num.intValue());
                if (!a3.isNull(a10)) {
                    num2 = Integer.valueOf(a3.getInt(a10));
                }
                localCommentEntity = new LocalCommentEntity(l2, string, j2, string2, i2, a11, e.a(num2.intValue()));
            } else {
                localCommentEntity = null;
            }
            return localCommentEntity;
        } finally {
            a3.close();
            a2.c();
        }
    }

    public void a() {
        this.f5384a.b();
        b.C.a.f a2 = this.f5389f.a();
        this.f5384a.c();
        try {
            a2.l();
            this.f5384a.o();
        } finally {
            this.f5384a.e();
            this.f5389f.a(a2);
        }
    }

    public List<LocalCommentEntity> a(EntityDatabaseStatus entityDatabaseStatus) {
        Long l2;
        Integer num;
        x a2 = x.a("SELECT * FROM comment WHERE entityDatabaseStatus = ?", 1);
        Integer a3 = e.a(entityDatabaseStatus);
        if (a3 == null) {
            a2.a(1);
        } else {
            a2.a(1, (long) a3.intValue());
        }
        this.f5384a.b();
        Cursor a4 = b.a(this.f5384a, a2, false);
        try {
            int a5 = a.a(a4, "id");
            int a6 = a.a(a4, "entityId");
            int a7 = a.a(a4, "entityVersion");
            int a8 = a.a(a4, "text");
            int a9 = a.a(a4, "rate");
            int a10 = a.a(a4, "entityType");
            int a11 = a.a(a4, "entityDatabaseStatus");
            ArrayList arrayList = new ArrayList(a4.getCount());
            while (a4.moveToNext()) {
                Integer num2 = null;
                if (a4.isNull(a5)) {
                    l2 = null;
                } else {
                    l2 = Long.valueOf(a4.getLong(a5));
                }
                String string = a4.getString(a6);
                long j2 = a4.getLong(a7);
                String string2 = a4.getString(a8);
                int i2 = a4.getInt(a9);
                if (a4.isNull(a10)) {
                    num = null;
                } else {
                    num = Integer.valueOf(a4.getInt(a10));
                }
                EntityType a12 = f.a(num.intValue());
                if (!a4.isNull(a11)) {
                    num2 = Integer.valueOf(a4.getInt(a11));
                }
                LocalCommentEntity localCommentEntity = new LocalCommentEntity(l2, string, j2, string2, i2, a12, e.a(num2.intValue()));
                arrayList.add(localCommentEntity);
            }
            return arrayList;
        } finally {
            a4.close();
            a2.c();
        }
    }

    public LiveData<LocalCommentEntity> a(String str) {
        x a2 = x.a("SELECT * FROM comment WHERE entityId = ? LIMIT 1", 1);
        if (str == null) {
            a2.a(1);
        } else {
            a2.a(1, str);
        }
        return this.f5384a.h().a(new String[]{"comment"}, false, new g(this, a2));
    }
}
