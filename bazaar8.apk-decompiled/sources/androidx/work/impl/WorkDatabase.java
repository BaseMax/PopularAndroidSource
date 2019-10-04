package androidx.work.impl;

import android.content.Context;
import androidx.room.RoomDatabase;
import b.H.a.c.B;
import b.H.a.c.C0181b;
import b.H.a.c.C0185f;
import b.H.a.c.p;
import b.H.a.k;
import b.z.u;
import java.util.concurrent.TimeUnit;

public abstract class WorkDatabase extends RoomDatabase {

    /* renamed from: l  reason: collision with root package name */
    public static final long f1024l = TimeUnit.DAYS.toMillis(7);

    public static WorkDatabase a(Context context, boolean z) {
        RoomDatabase.a<WorkDatabase> aVar;
        if (z) {
            aVar = u.a(context, WorkDatabase.class);
            aVar.a();
        } else {
            aVar = u.a(context, WorkDatabase.class, "androidx.work.workdb");
        }
        aVar.a(q());
        aVar.a(k.f1576a);
        aVar.a(new k.a(context, 2, 3));
        aVar.a(k.f1577b);
        aVar.a(k.f1578c);
        aVar.c();
        return aVar.b();
    }

    public static RoomDatabase.b q() {
        return new g();
    }

    public static long r() {
        return System.currentTimeMillis() - f1024l;
    }

    public static String s() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + r() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    public abstract C0181b p();

    public abstract C0185f t();

    public abstract b.H.a.c.k u();

    public abstract p v();

    public abstract B w();
}
