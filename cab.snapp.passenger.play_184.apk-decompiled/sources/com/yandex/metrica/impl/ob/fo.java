package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.b;
import com.yandex.metrica.impl.bt;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.l;
import com.yandex.metrica.impl.ob.fm;
import com.yandex.metrica.impl.s;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class fo implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantReadWriteLock f6031a = new ReentrantReadWriteLock();

    /* renamed from: b  reason: collision with root package name */
    private final Lock f6032b = this.f6031a.readLock();
    private final Lock c = this.f6031a.writeLock();
    private final fp d;
    private final a e;
    /* access modifiers changed from: private */
    public final Object f = new Object();
    /* access modifiers changed from: private */
    public final List<ContentValues> g = new ArrayList(3);
    private final Context h;
    private final ac i;
    private final AtomicLong j = new AtomicLong();

    class a extends Thread {

        /* renamed from: b  reason: collision with root package name */
        private final List<ContentValues> f6034b = new ArrayList();
        private fn c;

        public a() {
        }

        public void run() {
            while (!Thread.currentThread().isInterrupted()) {
                try {
                    synchronized (this) {
                        if (fo.this.d()) {
                            wait();
                        }
                    }
                } catch (Exception unused) {
                    Thread.currentThread().interrupt();
                }
                synchronized (fo.this.f) {
                    this.f6034b.clear();
                    this.f6034b.addAll(fo.this.g);
                    fo.this.g.clear();
                    fo.a(fo.this, (List) this.f6034b);
                }
                b();
            }
        }

        /* access modifiers changed from: package-private */
        public synchronized void a() {
            interrupt();
            this.c = null;
        }

        /* access modifiers changed from: package-private */
        public synchronized void a(fn fnVar) {
            this.c = fnVar;
        }

        /* access modifiers changed from: package-private */
        public synchronized void b() {
            if (this.c != null) {
                this.c.h();
            }
        }
    }

    public fo(ac acVar, fp fpVar) {
        this.d = fpVar;
        this.h = acVar.c();
        this.i = acVar;
        this.j.set(b());
        this.e = new a();
        a aVar = this.e;
        aVar.setName("DatabaseWorker [" + acVar.b() + "]");
        this.e.start();
        c();
    }

    public void a(fn fnVar) {
        this.e.a(fnVar);
    }

    public void a(long j2, en enVar, long j3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Long.valueOf(j2));
        contentValues.put("start_time", Long.valueOf(j3));
        contentValues.put("server_time_offset", Long.valueOf(nr.a()));
        contentValues.put("obtained_before_first_sync", Boolean.valueOf(nn.a().d()));
        contentValues.put("type", Integer.valueOf(enVar.a()));
        new l(this.h).a(this.i.k()).a(contentValues).a();
        a(contentValues);
    }

    public void a(ob obVar, ek ekVar, b.a aVar) {
        ContentValues contentValues = new ContentValues(21);
        contentValues.put("number", Long.valueOf(ekVar.c()));
        contentValues.put("time", Long.valueOf(ekVar.d()));
        contentValues.put("session_id", Long.valueOf(ekVar.a()));
        contentValues.put("session_type", Integer.valueOf(ekVar.b().a()));
        new l(this.h).a(this.i.k()).a(contentValues).a(obVar, aVar);
        b(contentValues);
    }

    /* JADX INFO: finally extract failed */
    private long b() {
        this.f6032b.lock();
        try {
            long a2 = nc.a(this.d.getReadableDatabase(), "reports");
            this.f6032b.unlock();
            return a2;
        } catch (Exception unused) {
            this.f6032b.unlock();
            return 0;
        } catch (Throwable th) {
            this.f6032b.unlock();
            throw th;
        }
    }

    public void b(ContentValues contentValues) {
        synchronized (this.f) {
            this.g.add(contentValues);
        }
        synchronized (this.e) {
            this.e.notifyAll();
        }
    }

    public int a(long[] jArr) {
        Cursor cursor;
        this.c.lock();
        int i2 = 0;
        try {
            if (fm.f6016a.booleanValue()) {
                this.f6032b.lock();
                Cursor cursor2 = null;
                try {
                    SQLiteDatabase readableDatabase = this.d.getReadableDatabase();
                    cursor = readableDatabase.rawQuery(" SELECT DISTINCT id From sessions order by id asc ", new String[0]);
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("All sessions in db: ");
                        while (cursor.moveToNext()) {
                            stringBuffer.append(cursor.getString(0));
                            stringBuffer.append(", ");
                        }
                        cursor2 = readableDatabase.rawQuery(" SELECT DISTINCT session_id From reports order by session_id asc ", new String[0]);
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("All sessions in reports db: ");
                        while (cursor2.moveToNext()) {
                            stringBuffer2.append(cursor2.getString(0));
                            stringBuffer2.append(", ");
                        }
                        this.f6032b.unlock();
                        bv.a(cursor);
                    } catch (Exception unused) {
                        this.f6032b.unlock();
                        bv.a(cursor);
                        bv.a(cursor2);
                        i2 = this.d.getWritableDatabase().delete("sessions", fm.ah.c, bv.a(jArr));
                        this.c.unlock();
                        return i2;
                    } catch (Throwable th) {
                        th = th;
                        this.f6032b.unlock();
                        bv.a(cursor);
                        bv.a((Cursor) null);
                        throw th;
                    }
                } catch (Exception unused2) {
                    cursor = null;
                    this.f6032b.unlock();
                    bv.a(cursor);
                    bv.a(cursor2);
                    i2 = this.d.getWritableDatabase().delete("sessions", fm.ah.c, bv.a(jArr));
                    this.c.unlock();
                    return i2;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                    this.f6032b.unlock();
                    bv.a(cursor);
                    bv.a((Cursor) null);
                    throw th;
                }
                bv.a(cursor2);
            }
            i2 = this.d.getWritableDatabase().delete("sessions", fm.ah.c, bv.a(jArr));
        } catch (Exception unused3) {
        } catch (Throwable th3) {
            this.c.unlock();
            throw th3;
        }
        this.c.unlock();
        return i2;
    }

    private void c() {
        try {
            this.c.lock();
            SQLiteDatabase writableDatabase = this.d.getWritableDatabase();
            if (new File(writableDatabase.getPath()).length() > 5242880) {
                this.j.addAndGet((long) (-a(writableDatabase)));
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            this.c.unlock();
            throw th;
        }
        this.c.unlock();
    }

    /* access modifiers changed from: package-private */
    public final int a(SQLiteDatabase sQLiteDatabase) {
        try {
            Integer[] numArr = new Integer[s.f6517a.size()];
            Iterator it = s.f6517a.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                numArr[i2] = Integer.valueOf(((s.a) it.next()).a());
                i2++;
            }
            return sQLiteDatabase.delete("reports", String.format("%1$s NOT IN (%2$s) AND (%3$s IN (SELECT %3$s FROM %4$s ORDER BY %5$s, %6$s LIMIT (SELECT count() FROM %4$s) / %7$s ) OR %5$s < %8$s )", new Object[]{"type", TextUtils.join(",", numArr), "id", "reports", "session_id", "number", 10, Long.valueOf((System.currentTimeMillis() / 1000) - TimeUnit.DAYS.toSeconds(14))}), null);
        } catch (Throwable th) {
            lm.a(this.h).reportError("deleteExcessiveReports exception", th);
            return 0;
        }
    }

    public void a(long j2, int i2, int i3) throws SQLiteException {
        Cursor cursor;
        ArrayList arrayList;
        if (i3 > 0) {
            this.c.lock();
            Cursor cursor2 = null;
            try {
                SQLiteDatabase writableDatabase = this.d.getWritableDatabase();
                String format = String.format(Locale.US, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)", new Object[]{"session_id", Long.toString(j2), "session_type", Integer.toString(i2), "id", "reports", Integer.toString(i3 - 1)});
                if (this.i.n().b()) {
                    cursor = a(format);
                    if (cursor != null) {
                        try {
                            if (cursor.getCount() > 0) {
                                arrayList = new ArrayList(cursor.getCount());
                                while (cursor.moveToNext()) {
                                    ContentValues contentValues = new ContentValues();
                                    DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                                    arrayList.add(contentValues);
                                }
                            }
                        } catch (Exception unused) {
                        } catch (Throwable th) {
                            th = th;
                            cursor2 = cursor;
                            bv.a(cursor2);
                            this.c.unlock();
                            throw th;
                        }
                    }
                    arrayList = null;
                } else {
                    cursor = null;
                    arrayList = null;
                }
                int delete = writableDatabase.delete("reports", format, null);
                if (arrayList != null) {
                    a((List<ContentValues>) arrayList, "Event removed from db");
                }
                this.j.addAndGet((long) (-delete));
            } catch (Exception unused2) {
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                bv.a(cursor2);
                this.c.unlock();
                throw th;
            }
            bv.a(cursor);
            this.c.unlock();
        }
    }

    private Cursor a(String str) {
        try {
            return this.d.getReadableDatabase().query("reports", null, str, null, null, null, null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: finally extract failed */
    public Cursor a(Map<String, String> map) {
        this.f6032b.lock();
        try {
            Cursor query = this.d.getReadableDatabase().query("sessions", null, a("id >= ?", map), a(new String[]{Long.toString(0)}, map), null, null, "id ASC", null);
            this.f6032b.unlock();
            return query;
        } catch (Exception unused) {
            this.f6032b.unlock();
            return null;
        } catch (Throwable th) {
            this.f6032b.unlock();
            throw th;
        }
    }

    /* JADX INFO: finally extract failed */
    public Cursor a(long j2, Map<String, String> map) {
        this.f6032b.lock();
        try {
            Cursor query = this.d.getReadableDatabase().query("sessions", null, a("id = ?", map), a(new String[]{Long.toString(j2)}, map), null, null, null, null);
            this.f6032b.unlock();
            return query;
        } catch (Exception unused) {
            this.f6032b.unlock();
            return null;
        } catch (Throwable th) {
            this.f6032b.unlock();
            throw th;
        }
    }

    /* JADX INFO: finally extract failed */
    public Cursor a(long j2, en enVar) throws SQLiteException {
        this.f6032b.lock();
        try {
            Cursor query = this.d.getReadableDatabase().query("reports", null, "session_id = ? AND session_type = ?", new String[]{Long.toString(j2), Integer.toString(enVar.a())}, null, null, "number ASC", null);
            this.f6032b.unlock();
            return query;
        } catch (Exception unused) {
            this.f6032b.unlock();
            return null;
        } catch (Throwable th) {
            this.f6032b.unlock();
            throw th;
        }
    }

    private void a(List<ContentValues> list, String str) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            a(list.get(i2), str);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        r0 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0049, code lost:
        com.yandex.metrica.impl.bv.a((android.database.Cursor) null);
        r7.f6032b.unlock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0052, code lost:
        throw r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0039, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x003b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<android.content.ContentValues> a(java.lang.Long r8) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.concurrent.locks.Lock r1 = r7.f6032b
            r1.lock()
            r1 = 0
            com.yandex.metrica.impl.ob.fp r2 = r7.d     // Catch:{ Exception -> 0x003b }
            android.database.sqlite.SQLiteDatabase r2 = r2.getReadableDatabase()     // Catch:{ Exception -> 0x003b }
            java.lang.String r3 = "SELECT DISTINCT report_request_parameters FROM sessions WHERE id >= 0"
            if (r8 == 0) goto L_0x0023
            java.util.Locale r3 = java.util.Locale.US     // Catch:{ Exception -> 0x003b }
            java.lang.String r4 = "SELECT DISTINCT report_request_parameters FROM sessions WHERE id = %s"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ Exception -> 0x003b }
            r6 = 0
            r5[r6] = r8     // Catch:{ Exception -> 0x003b }
            java.lang.String r3 = java.lang.String.format(r3, r4, r5)     // Catch:{ Exception -> 0x003b }
        L_0x0023:
            android.database.Cursor r1 = r2.rawQuery(r3, r1)     // Catch:{ Exception -> 0x003b }
        L_0x0027:
            boolean r8 = r1.moveToNext()     // Catch:{ Exception -> 0x003b }
            if (r8 == 0) goto L_0x0040
            android.content.ContentValues r8 = new android.content.ContentValues     // Catch:{ Exception -> 0x003b }
            r8.<init>()     // Catch:{ Exception -> 0x003b }
            android.database.DatabaseUtils.cursorRowToContentValues(r1, r8)     // Catch:{ Exception -> 0x003b }
            r0.add(r8)     // Catch:{ Exception -> 0x003b }
            goto L_0x0027
        L_0x0039:
            r8 = move-exception
            goto L_0x0049
        L_0x003b:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ all -> 0x0039 }
            r0.<init>()     // Catch:{ all -> 0x0039 }
        L_0x0040:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)
            java.util.concurrent.locks.Lock r8 = r7.f6032b
            r8.unlock()
            return r0
        L_0x0049:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)
            java.util.concurrent.locks.Lock r0 = r7.f6032b
            r0.unlock()
            goto L_0x0053
        L_0x0052:
            throw r8
        L_0x0053:
            goto L_0x0052
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fo.a(java.lang.Long):java.util.List");
    }

    public ContentValues b(long j2, en enVar) {
        ContentValues contentValues = new ContentValues();
        this.f6032b.lock();
        Cursor cursor = null;
        try {
            cursor = this.d.getReadableDatabase().rawQuery(String.format(Locale.US, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1", new Object[]{Long.valueOf(j2), Integer.valueOf(enVar.a())}), null);
            if (cursor.moveToNext()) {
                ContentValues contentValues2 = new ContentValues();
                DatabaseUtils.cursorRowToContentValues(cursor, contentValues2);
                contentValues = contentValues2;
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            bv.a((Cursor) null);
            this.f6032b.unlock();
            throw th;
        }
        bv.a(cursor);
        this.f6032b.unlock();
        return contentValues;
    }

    private static String a(String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder(str);
        for (String next : map.keySet()) {
            sb.append(sb.length() > 0 ? " AND " : "");
            sb.append(next + " = ? ");
        }
        if (bt.a(sb.toString())) {
            return null;
        }
        return sb.toString();
    }

    private static String[] a(String[] strArr, Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(strArr));
        for (Map.Entry<String, String> value : map.entrySet()) {
            arrayList.add(value.getValue());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String b(ContentValues contentValues, String str) {
        return bt.b(contentValues.getAsString(str), "");
    }

    public long a() {
        this.f6032b.lock();
        try {
            return this.j.get();
        } finally {
            this.f6032b.unlock();
        }
    }

    public void close() {
        this.g.clear();
        this.e.a();
    }

    /* access modifiers changed from: private */
    public boolean d() {
        boolean isEmpty;
        synchronized (this.f) {
            isEmpty = this.g.isEmpty();
        }
        return isEmpty;
    }

    public void a(ContentValues contentValues) {
        if (contentValues != null) {
            this.c.lock();
            try {
                this.d.getWritableDatabase().insertOrThrow("sessions", null, contentValues);
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.c.unlock();
                throw th;
            }
            this.c.unlock();
        }
    }

    private void a(ContentValues contentValues, String str) {
        int i2;
        Integer asInteger = contentValues.getAsInteger("type");
        if (asInteger != null) {
            i2 = asInteger.intValue();
        } else {
            i2 = -1;
        }
        if (s.b(i2)) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(": ");
            sb.append(b(contentValues, "name"));
            String b2 = b(contentValues, FirebaseAnalytics.b.VALUE);
            if (s.c(contentValues.getAsInteger("type").intValue()) && !TextUtils.isEmpty(b2)) {
                sb.append(" with value ");
                sb.append(b2);
            }
            this.i.n().a(sb.toString());
        }
    }

    static /* synthetic */ void a(fo foVar, List list) {
        SQLiteDatabase sQLiteDatabase;
        if (list != null && !list.isEmpty()) {
            foVar.c.lock();
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase = foVar.d.getWritableDatabase();
                try {
                    if (foVar.j.get() % 10 == 0) {
                        foVar.c();
                    }
                    sQLiteDatabase.beginTransaction();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ContentValues contentValues = (ContentValues) it.next();
                        sQLiteDatabase.insertOrThrow("reports", null, contentValues);
                        foVar.a(contentValues, "Event saved to db");
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    foVar.j.incrementAndGet();
                    bv.a(sQLiteDatabase);
                } catch (Exception unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    bv.a(sQLiteDatabase2);
                    foVar.c.unlock();
                } catch (Throwable th) {
                    th = th;
                    bv.a(sQLiteDatabase);
                    foVar.c.unlock();
                    throw th;
                }
            } catch (Exception unused2) {
                bv.a(sQLiteDatabase2);
                foVar.c.unlock();
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
                bv.a(sQLiteDatabase);
                foVar.c.unlock();
                throw th;
            }
            foVar.c.unlock();
        }
    }
}
