package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.yandex.metrica.impl.bv;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class fr {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f6038a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, Object> f6039b;
    private final String c;
    private final a d;
    /* access modifiers changed from: private */
    public volatile boolean e;
    private final fy f;

    class a extends Thread {
        public a(String str) {
            super(str);
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(4:11|12|13|14) */
        /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0033 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r3 = this;
                com.yandex.metrica.impl.ob.fr r0 = com.yandex.metrica.impl.ob.fr.this
                java.util.Map r0 = r0.f6038a
                monitor-enter(r0)
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005e }
                com.yandex.metrica.impl.ob.fr.b((com.yandex.metrica.impl.ob.fr) r1)     // Catch:{ all -> 0x005e }
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005e }
                r2 = 1
                boolean unused = r1.e = r2     // Catch:{ all -> 0x005e }
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005e }
                java.util.Map r1 = r1.f6038a     // Catch:{ all -> 0x005e }
                r1.notifyAll()     // Catch:{ all -> 0x005e }
                monitor-exit(r0)     // Catch:{ all -> 0x005e }
            L_0x001c:
                boolean r0 = r3.isInterrupted()
                if (r0 != 0) goto L_0x005d
                monitor-enter(r3)
                com.yandex.metrica.impl.ob.fr r0 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005a }
                java.util.Map r0 = r0.f6039b     // Catch:{ all -> 0x005a }
                int r0 = r0.size()     // Catch:{ all -> 0x005a }
                if (r0 != 0) goto L_0x0036
                r3.wait()     // Catch:{ InterruptedException -> 0x0033 }
                goto L_0x0036
            L_0x0033:
                r3.interrupt()     // Catch:{ all -> 0x005a }
            L_0x0036:
                java.util.HashMap r0 = new java.util.HashMap     // Catch:{ all -> 0x005a }
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005a }
                java.util.Map r1 = r1.f6039b     // Catch:{ all -> 0x005a }
                r0.<init>(r1)     // Catch:{ all -> 0x005a }
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this     // Catch:{ all -> 0x005a }
                java.util.Map r1 = r1.f6039b     // Catch:{ all -> 0x005a }
                r1.clear()     // Catch:{ all -> 0x005a }
                monitor-exit(r3)     // Catch:{ all -> 0x005a }
                int r1 = r0.size()
                if (r1 <= 0) goto L_0x001c
                com.yandex.metrica.impl.ob.fr r1 = com.yandex.metrica.impl.ob.fr.this
                com.yandex.metrica.impl.ob.fr.a((com.yandex.metrica.impl.ob.fr) r1, (java.util.Map) r0)
                r0.clear()
                goto L_0x001c
            L_0x005a:
                r0 = move-exception
                monitor-exit(r3)     // Catch:{ all -> 0x005a }
                throw r0
            L_0x005d:
                return
            L_0x005e:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x005e }
                goto L_0x0062
            L_0x0061:
                throw r1
            L_0x0062:
                goto L_0x0061
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fr.a.run():void");
        }
    }

    static {
        fr.class.getSimpleName();
    }

    public fr(fp fpVar, String str) {
        this(str, (fy) new ga(fpVar));
    }

    protected fr(String str, fy fyVar) {
        this.f6038a = new HashMap();
        this.f6039b = new HashMap();
        this.f = fyVar;
        this.c = str;
        this.d = new a(String.format(Locale.US, "YMM-DW-%s", new Object[]{Integer.valueOf(ni.b())}));
        this.d.start();
    }

    /* access modifiers changed from: package-private */
    public String a() {
        return this.c;
    }

    public void b() {
        synchronized (this.d) {
            this.d.notifyAll();
        }
    }

    private void a(ContentValues[] contentValuesArr) {
        SQLiteDatabase sQLiteDatabase;
        if (contentValuesArr != null) {
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                sQLiteDatabase = this.f.a();
                try {
                    sQLiteDatabase.beginTransaction();
                    for (ContentValues contentValues : contentValuesArr) {
                        if (contentValues.getAsString(FirebaseAnalytics.b.VALUE) == null) {
                            sQLiteDatabase.delete(a(), "key = ?", new String[]{contentValues.getAsString("key")});
                        } else {
                            sQLiteDatabase.insertWithOnConflict(a(), null, contentValues, 5);
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    bv.a(sQLiteDatabase);
                    this.f.a(sQLiteDatabase);
                } catch (Exception unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    bv.a(sQLiteDatabase2);
                    this.f.a(sQLiteDatabase2);
                } catch (Throwable th) {
                    th = th;
                    bv.a(sQLiteDatabase);
                    this.f.a(sQLiteDatabase);
                    throw th;
                }
            } catch (Exception unused2) {
                bv.a(sQLiteDatabase2);
                this.f.a(sQLiteDatabase2);
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
                bv.a(sQLiteDatabase);
                this.f.a(sQLiteDatabase);
                throw th;
            }
        }
    }

    public String a(String str, String str2) {
        Object c2 = c(str);
        return c2 instanceof String ? (String) c2 : str2;
    }

    public int a(String str, int i) {
        Object c2 = c(str);
        return c2 instanceof Integer ? ((Integer) c2).intValue() : i;
    }

    public long a(String str, long j) {
        Object c2 = c(str);
        return c2 instanceof Long ? ((Long) c2).longValue() : j;
    }

    public boolean a(String str, boolean z) {
        Object c2 = c(str);
        return c2 instanceof Boolean ? ((Boolean) c2).booleanValue() : z;
    }

    public fr a(String str) {
        synchronized (this.f6038a) {
            c();
            this.f6038a.remove(str);
        }
        synchronized (this.d) {
            this.f6039b.put(str, this);
            this.d.notifyAll();
        }
        return this;
    }

    public synchronized fr b(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    public fr b(String str, long j) {
        a(str, (Object) Long.valueOf(j));
        return this;
    }

    public synchronized fr b(String str, int i) {
        a(str, (Object) Integer.valueOf(i));
        return this;
    }

    public fr b(String str, boolean z) {
        a(str, (Object) Boolean.valueOf(z));
        return this;
    }

    public boolean b(String str) {
        boolean containsKey;
        synchronized (this.f6038a) {
            c();
            containsKey = this.f6038a.containsKey(str);
        }
        return containsKey;
    }

    /* access modifiers changed from: package-private */
    public void a(String str, Object obj) {
        synchronized (this.f6038a) {
            c();
            this.f6038a.put(str, obj);
        }
        synchronized (this.d) {
            this.f6039b.put(str, obj);
            this.d.notifyAll();
        }
    }

    private Object c(String str) {
        Object obj;
        synchronized (this.f6038a) {
            c();
            obj = this.f6038a.get(str);
        }
        return obj;
    }

    private void c() {
        if (!this.e) {
            try {
                this.f6038a.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0084 A[Catch:{ Exception -> 0x0095, all -> 0x0093 }] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x002c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ void b(com.yandex.metrica.impl.ob.fr r18) {
        /*
            r1 = r18
            java.lang.String r0 = "type"
            java.lang.String r2 = "value"
            java.lang.String r3 = "key"
            com.yandex.metrica.impl.ob.fy r5 = r1.f     // Catch:{ Exception -> 0x00a6, all -> 0x009a }
            android.database.sqlite.SQLiteDatabase r5 = r5.a()     // Catch:{ Exception -> 0x00a6, all -> 0x009a }
            java.lang.String r7 = r18.a()     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
            r14 = 3
            java.lang.String[] r8 = new java.lang.String[r14]     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
            r6 = 0
            r8[r6] = r3     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
            r15 = 1
            r8[r15] = r2     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
            r13 = 2
            r8[r13] = r0     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r16 = 0
            r6 = r5
            r4 = 2
            r13 = r16
            android.database.Cursor r6 = r6.query(r7, r8, r9, r10, r11, r12, r13)     // Catch:{ Exception -> 0x00a7, all -> 0x0098 }
        L_0x002c:
            boolean r7 = r6.moveToNext()     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            if (r7 == 0) goto L_0x008a
            int r7 = r6.getColumnIndex(r3)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            java.lang.String r7 = r6.getString(r7)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            int r8 = r6.getColumnIndex(r2)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            java.lang.String r8 = r6.getString(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            int r9 = r6.getColumnIndex(r0)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            int r9 = r6.getInt(r9)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            boolean r10 = android.text.TextUtils.isEmpty(r7)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            if (r10 != 0) goto L_0x002c
            if (r9 == r15) goto L_0x006d
            if (r9 == r4) goto L_0x0068
            if (r9 == r14) goto L_0x0063
            r10 = 4
            if (r9 == r10) goto L_0x0082
            r10 = 5
            if (r9 == r10) goto L_0x005e
        L_0x005c:
            r8 = 0
            goto L_0x0082
        L_0x005e:
            java.lang.Float r8 = com.yandex.metrica.impl.ob.nj.b(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            goto L_0x0082
        L_0x0063:
            java.lang.Long r8 = com.yandex.metrica.impl.ob.nj.a(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            goto L_0x0082
        L_0x0068:
            java.lang.Integer r8 = com.yandex.metrica.impl.ob.nj.c(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            goto L_0x0082
        L_0x006d:
            java.lang.String r9 = "true"
            boolean r9 = r9.equals(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            if (r9 == 0) goto L_0x0078
            java.lang.Boolean r8 = java.lang.Boolean.TRUE     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            goto L_0x0082
        L_0x0078:
            java.lang.String r9 = "false"
            boolean r8 = r9.equals(r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            if (r8 == 0) goto L_0x005c
            java.lang.Boolean r8 = java.lang.Boolean.FALSE     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
        L_0x0082:
            if (r8 == 0) goto L_0x002c
            java.util.Map<java.lang.String, java.lang.Object> r9 = r1.f6038a     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            r9.put(r7, r8)     // Catch:{ Exception -> 0x0095, all -> 0x0093 }
            goto L_0x002c
        L_0x008a:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r6)
        L_0x008d:
            com.yandex.metrica.impl.ob.fy r0 = r1.f
            r0.a(r5)
            return
        L_0x0093:
            r0 = move-exception
            goto L_0x009d
        L_0x0095:
            r17 = r6
            goto L_0x00a9
        L_0x0098:
            r0 = move-exception
            goto L_0x009c
        L_0x009a:
            r0 = move-exception
            r5 = 0
        L_0x009c:
            r6 = 0
        L_0x009d:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r6)
            com.yandex.metrica.impl.ob.fy r1 = r1.f
            r1.a(r5)
            throw r0
        L_0x00a6:
            r5 = 0
        L_0x00a7:
            r17 = 0
        L_0x00a9:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r17)
            goto L_0x008d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fr.b(com.yandex.metrica.impl.ob.fr):void");
    }

    static /* synthetic */ void a(fr frVar, Map map) {
        ContentValues[] contentValuesArr = new ContentValues[map.size()];
        int i = 0;
        for (Map.Entry entry : map.entrySet()) {
            ContentValues contentValues = new ContentValues();
            Object value = entry.getValue();
            contentValues.put("key", (String) entry.getKey());
            if (value == frVar) {
                contentValues.putNull(FirebaseAnalytics.b.VALUE);
            } else if (value instanceof String) {
                contentValues.put(FirebaseAnalytics.b.VALUE, (String) value);
                contentValues.put("type", 4);
            } else if (value instanceof Long) {
                contentValues.put(FirebaseAnalytics.b.VALUE, (Long) value);
                contentValues.put("type", 3);
            } else if (value instanceof Integer) {
                contentValues.put(FirebaseAnalytics.b.VALUE, (Integer) value);
                contentValues.put("type", 2);
            } else if (value instanceof Boolean) {
                contentValues.put(FirebaseAnalytics.b.VALUE, String.valueOf(((Boolean) value).booleanValue()));
                contentValues.put("type", 1);
            } else if (value instanceof Float) {
                contentValues.put(FirebaseAnalytics.b.VALUE, (Float) value);
                contentValues.put("type", 5);
            } else if (value != null) {
                throw new UnsupportedOperationException();
            }
            contentValuesArr[i] = contentValues;
            i++;
        }
        frVar.a(contentValuesArr);
    }
}
