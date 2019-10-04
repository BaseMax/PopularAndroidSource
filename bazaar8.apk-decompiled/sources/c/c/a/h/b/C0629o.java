package c.c.a.h.b;

import android.content.Context;
import androidx.room.RoomDatabase;
import b.z.u;
import c.c.a.e.a.a.c;
import c.c.a.e.d.b.C0375e;
import c.c.a.e.d.b.C0385o;
import c.c.a.e.d.b.L;
import c.c.a.e.d.m.a.f;
import c.c.a.e.d.r.a.a.a;
import com.farsitel.bazaar.data.db.AppDatabase;
import com.farsitel.bazaar.data.feature.payment.local.PaymentDatabase;
import h.f.b.j;

/* renamed from: c.c.a.h.b.o  reason: case insensitive filesystem */
/* compiled from: DatabaseModule.kt */
public final class C0629o {
    public final f a(PaymentDatabase paymentDatabase) {
        j.b(paymentDatabase, "paymentDatabase");
        return paymentDatabase.p();
    }

    public final a b(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.q();
    }

    public final c.c.a.e.d.r.b.a.a c(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.r();
    }

    public final C0375e d(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.s();
    }

    public final c.c.a.e.d.h.e.a.a.a e(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.t();
    }

    public final C0385o f(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.u();
    }

    public final c.c.a.e.d.n.a.a g(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.v();
    }

    public final L h(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.w();
    }

    public final c.c.a.e.d.d.a.a a(AppDatabase appDatabase) {
        j.b(appDatabase, "appDatabase");
        return appDatabase.p();
    }

    public final c b(Context context) {
        j.b(context, "context");
        return new c(context);
    }

    public final PaymentDatabase c(Context context) {
        j.b(context, "context");
        RoomDatabase.a<PaymentDatabase> a2 = u.a(context.getApplicationContext(), PaymentDatabase.class, "payment_data.db");
        a2.c();
        PaymentDatabase b2 = a2.b();
        j.a((Object) b2, "Room\n        .databaseBu…ration()\n        .build()");
        return b2;
    }

    public final AppDatabase a(Context context) {
        j.b(context, "context");
        RoomDatabase.a<AppDatabase> a2 = u.a(context.getApplicationContext(), AppDatabase.class, "data.db");
        a2.a(c.c.a.e.a.c.a());
        a2.c();
        AppDatabase b2 = a2.b();
        j.a((Object) b2, "Room\n        .databaseBu…ration()\n        .build()");
        return b2;
    }
}
