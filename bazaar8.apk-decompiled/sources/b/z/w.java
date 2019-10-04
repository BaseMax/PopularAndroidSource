package b.z;

import android.database.Cursor;
import b.C.a.b;
import b.C.a.c;

/* compiled from: RoomOpenHelper */
public class w extends c.a {

    /* renamed from: b  reason: collision with root package name */
    public C0354c f3672b;

    /* renamed from: c  reason: collision with root package name */
    public final a f3673c;

    /* renamed from: d  reason: collision with root package name */
    public final String f3674d;

    /* renamed from: e  reason: collision with root package name */
    public final String f3675e;

    /* compiled from: RoomOpenHelper */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3676a;

        public a(int i2) {
            this.f3676a = i2;
        }

        public abstract void a(b bVar);

        public abstract void b(b bVar);

        public abstract void c(b bVar);

        public abstract void d(b bVar);

        public void e(b bVar) {
        }

        public void f(b bVar) {
        }

        public abstract void g(b bVar);
    }

    public w(C0354c cVar, a aVar, String str, String str2) {
        super(aVar.f3676a);
        this.f3672b = cVar;
        this.f3673c = aVar;
        this.f3674d = str;
        this.f3675e = str2;
    }

    public static boolean g(b bVar) {
        Cursor d2 = bVar.d("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (d2.moveToFirst() && d2.getInt(0) != 0) {
                z = true;
            }
            return z;
        } finally {
            d2.close();
        }
    }

    public void a(b bVar) {
        super.a(bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:19:? A[ORIG_RETURN, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(b.C.a.b r3, int r4, int r5) {
        /*
            r2 = this;
            b.z.c r0 = r2.f3672b
            if (r0 == 0) goto L_0x0034
            androidx.room.RoomDatabase$c r0 = r0.f3612d
            java.util.List r0 = r0.a(r4, r5)
            if (r0 == 0) goto L_0x0034
            b.z.w$a r1 = r2.f3673c
            r1.f(r3)
            java.util.Iterator r0 = r0.iterator()
        L_0x0015:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0025
            java.lang.Object r1 = r0.next()
            b.z.a.a r1 = (b.z.a.a) r1
            r1.a(r3)
            goto L_0x0015
        L_0x0025:
            b.z.w$a r0 = r2.f3673c
            r0.g(r3)
            b.z.w$a r0 = r2.f3673c
            r0.e(r3)
            r2.h(r3)
            r0 = 1
            goto L_0x0035
        L_0x0034:
            r0 = 0
        L_0x0035:
            if (r0 != 0) goto L_0x0070
            b.z.c r0 = r2.f3672b
            if (r0 == 0) goto L_0x004c
            boolean r0 = r0.a(r4, r5)
            if (r0 != 0) goto L_0x004c
            b.z.w$a r4 = r2.f3673c
            r4.b(r3)
            b.z.w$a r4 = r2.f3673c
            r4.a(r3)
            goto L_0x0070
        L_0x004c:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "A migration from "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r4 = " to "
            r0.append(r4)
            r0.append(r5)
            java.lang.String r4 = " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r3.<init>(r4)
            throw r3
        L_0x0070:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.z.w.b(b.C.a.b, int, int):void");
    }

    public void c(b bVar) {
        h(bVar);
        this.f3673c.a(bVar);
        this.f3673c.c(bVar);
    }

    public void d(b bVar) {
        super.d(bVar);
        e(bVar);
        this.f3673c.d(bVar);
        this.f3672b = null;
    }

    public final void e(b bVar) {
        String str = null;
        if (g(bVar)) {
            Cursor a2 = bVar.a(new b.C.a.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                if (a2.moveToFirst()) {
                    str = a2.getString(0);
                }
            } finally {
                a2.close();
            }
        }
        if (!this.f3674d.equals(str) && !this.f3675e.equals(str)) {
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
        }
    }

    public final void f(b bVar) {
        bVar.b("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    public final void h(b bVar) {
        f(bVar);
        bVar.b(v.a(this.f3674d));
    }

    public void a(b bVar, int i2, int i3) {
        b(bVar, i2, i3);
    }
}
