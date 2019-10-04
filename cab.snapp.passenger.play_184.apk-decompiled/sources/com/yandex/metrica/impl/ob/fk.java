package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import com.google.android.gms.measurement.AppMeasurement;
import com.yandex.metrica.impl.bv;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

public abstract class fk {

    /* renamed from: a  reason: collision with root package name */
    private final fp f6012a;

    /* renamed from: b  reason: collision with root package name */
    private final gf f6013b;
    private final AtomicLong c;
    private final AtomicLong d;
    private final AtomicLong e;
    private final ContentValues f = new ContentValues();

    /* access modifiers changed from: protected */
    public abstract long d(long j);

    /* access modifiers changed from: protected */
    public abstract gf e(long j);

    public abstract String e();

    fk(fp fpVar, gf gfVar) {
        this.f6012a = fpVar;
        this.f6013b = gfVar;
        this.c = new AtomicLong(f());
        this.d = new AtomicLong(b(Long.MAX_VALUE));
        this.e = new AtomicLong(d(-1));
    }

    public long a() {
        return this.c.get();
    }

    public long b() {
        return this.d.get();
    }

    /* access modifiers changed from: package-private */
    public gf c() {
        return this.f6013b;
    }

    /* access modifiers changed from: protected */
    public fp d() {
        return this.f6012a;
    }

    private long f() {
        try {
            return nc.a(d().getReadableDatabase(), e());
        } catch (Exception unused) {
            return 0;
        }
    }

    /* access modifiers changed from: package-private */
    public void a(long j) {
        this.c.incrementAndGet();
        this.e.incrementAndGet();
        e(this.e.get()).i();
        if (this.d.get() > j) {
            this.d.set(j);
        }
    }

    /* access modifiers changed from: package-private */
    public void a(int i) {
        this.c.getAndAdd((long) (-i));
        this.d.set(b(Long.MAX_VALUE));
    }

    public long b(long j) {
        Cursor cursor = null;
        try {
            cursor = d().getReadableDatabase().rawQuery(String.format(Locale.US, "Select min(%s) from %s", new Object[]{AppMeasurement.d.TIMESTAMP, e()}), null);
            if (cursor.moveToFirst()) {
                long j2 = cursor.getLong(0);
                if (j2 != 0) {
                    j = j2;
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            bv.a((Cursor) null);
            throw th;
        }
        bv.a(cursor);
        return j;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x004e, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(long r8, java.lang.String r10) {
        /*
            r7 = this;
            monitor-enter(r7)
            com.yandex.metrica.impl.ob.fp r0 = r7.d()     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.content.ContentValues r1 = r7.f     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r1.clear()     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.content.ContentValues r1 = r7.f     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            java.lang.String r2 = "incremental_id"
            java.util.concurrent.atomic.AtomicLong r3 = r7.e     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            long r3 = r3.get()     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r5 = 1
            long r3 = r3 + r5
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r1.put(r2, r3)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.content.ContentValues r1 = r7.f     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            java.lang.String r2 = "timestamp"
            java.lang.Long r3 = java.lang.Long.valueOf(r8)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r1.put(r2, r3)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.content.ContentValues r1 = r7.f     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            java.lang.String r2 = "data"
            r1.put(r2, r10)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            android.content.ContentValues r10 = r7.f     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            java.lang.String r1 = r7.e()     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r2 = 0
            long r0 = r0.insert(r1, r2, r10)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
            r2 = -1
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r10 == 0) goto L_0x0048
            r7.a((long) r8)     // Catch:{ Exception -> 0x004d, all -> 0x004a }
        L_0x0048:
            monitor-exit(r7)
            return
        L_0x004a:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        L_0x004d:
            monitor-exit(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fk.a(long, java.lang.String):void");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0052 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.util.Map<java.lang.Long, java.lang.String> b(int r13) {
        /*
            r12 = this;
            monitor-enter(r12)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch:{ all -> 0x005d }
            r0.<init>()     // Catch:{ all -> 0x005d }
            r1 = 0
            com.yandex.metrica.impl.ob.fp r2 = r12.d()     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            android.database.sqlite.SQLiteDatabase r3 = r2.getReadableDatabase()     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            java.lang.String r4 = r12.e()     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r2 = 2
            java.lang.String[] r5 = new java.lang.String[r2]     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r2 = 0
            java.lang.String r6 = "incremental_id"
            r5[r2] = r6     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r2 = 1
            java.lang.String r6 = "data"
            r5[r2] = r6     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            java.lang.String r10 = "incremental_id ASC"
            java.lang.String r11 = java.lang.String.valueOf(r13)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            android.database.Cursor r1 = r3.query(r4, r5, r6, r7, r8, r9, r10, r11)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
        L_0x002e:
            boolean r13 = r1.moveToNext()     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            if (r13 == 0) goto L_0x0052
            android.content.ContentValues r13 = r12.f     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r13.clear()     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            android.content.ContentValues r13 = r12.f     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            com.yandex.metrica.impl.ob.nc.a((android.database.Cursor) r1, (android.content.ContentValues) r13)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            android.content.ContentValues r13 = r12.f     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            java.lang.String r2 = "incremental_id"
            java.lang.Long r13 = r13.getAsLong(r2)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            android.content.ContentValues r2 = r12.f     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            java.lang.String r3 = "data"
            java.lang.String r2 = r2.getAsString(r3)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            r0.put(r13, r2)     // Catch:{ Exception -> 0x0052, all -> 0x0056 }
            goto L_0x002e
        L_0x0052:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)     // Catch:{ all -> 0x005d }
            goto L_0x005b
        L_0x0056:
            r13 = move-exception
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)     // Catch:{ all -> 0x005d }
            throw r13     // Catch:{ all -> 0x005d }
        L_0x005b:
            monitor-exit(r12)
            return r0
        L_0x005d:
            r13 = move-exception
            monitor-exit(r12)
            goto L_0x0061
        L_0x0060:
            throw r13
        L_0x0061:
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fk.b(int):java.util.Map");
    }

    public synchronized int c(long j) {
        int i;
        i = 0;
        String format = String.format(Locale.US, "%s <= ?", new Object[]{"incremental_id"});
        try {
            i = d().getWritableDatabase().delete(e(), format, new String[]{String.valueOf(j)});
            if (i > 0) {
                a(i);
            }
        } catch (Exception unused) {
        }
        return i;
    }

    public synchronized int c(int i) {
        int i2;
        i2 = 0;
        if (i <= 0) {
            return 0;
        }
        String format = String.format(Locale.US, "%1$s <= (select max(%1$s) from (select %1$s from %2$s order by %1$s limit ?))", new Object[]{"incremental_id", e()});
        try {
            i2 = d().getWritableDatabase().delete(e(), format, new String[]{String.valueOf(i)});
            if (i2 > 0) {
                a(i2);
            }
        } catch (Exception unused) {
        }
        return i2;
    }
}
