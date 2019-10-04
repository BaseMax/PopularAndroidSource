package com.webengage.sdk.android.utils.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.measurement.AppMeasurement;
import com.webengage.sdk.android.utils.k;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class b extends com.webengage.sdk.android.utils.b {

    /* renamed from: b  reason: collision with root package name */
    private static b f5579b;

    /* renamed from: a  reason: collision with root package name */
    private Context f5580a;

    private b(Context context) {
        super(context, "http_data.db", 3);
        this.f5580a = context;
    }

    public static b a(Context context) {
        if (f5579b == null) {
            synchronized (b.class) {
                if (f5579b == null) {
                    f5579b = new b(context);
                }
            }
        }
        return f5579b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0020 A[SYNTHETIC, Splitter:B:15:0x0020] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0027 A[SYNTHETIC, Splitter:B:23:0x0027] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.Map<java.lang.String, java.util.List<java.lang.String>> a(byte[] r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x0024, all -> 0x001d }
            r1.<init>(r4)     // Catch:{ Exception -> 0x0024, all -> 0x001d }
            java.io.ObjectInputStream r4 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0024, all -> 0x001d }
            r4.<init>(r1)     // Catch:{ Exception -> 0x0024, all -> 0x001d }
            java.lang.Object r1 = r4.readObject()     // Catch:{ Exception -> 0x0025, all -> 0x0018 }
            java.util.Map r1 = (java.util.Map) r1     // Catch:{ Exception -> 0x0025, all -> 0x0018 }
            r4.close()     // Catch:{ Exception -> 0x0017 }
        L_0x0017:
            return r1
        L_0x0018:
            r0 = move-exception
            r2 = r0
            r0 = r4
            r4 = r2
            goto L_0x001e
        L_0x001d:
            r4 = move-exception
        L_0x001e:
            if (r0 == 0) goto L_0x0023
            r0.close()     // Catch:{ Exception -> 0x0023 }
        L_0x0023:
            throw r4
        L_0x0024:
            r4 = r0
        L_0x0025:
            if (r4 == 0) goto L_0x002a
            r4.close()     // Catch:{ Exception -> 0x002a }
        L_0x002a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.b.a(byte[]):java.util.Map");
    }

    private static boolean a(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            for (String file2 : list) {
                if (!a(new File(file, file2))) {
                    return false;
                }
            }
            return file.delete();
        } else if (file == null || !file.isFile()) {
            return false;
        } else {
            return file.delete();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x002e A[SYNTHETIC, Splitter:B:19:0x002e] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0038 A[SYNTHETIC, Splitter:B:26:0x0038] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(java.lang.String r4, byte[] r5) {
        /*
            r3 = this;
            if (r5 == 0) goto L_0x003e
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            java.io.File r2 = r3.g()     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            r1.<init>(r2, r4)     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            boolean r4 = r1.exists()     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            if (r4 == 0) goto L_0x0015
            r1.delete()     // Catch:{ Exception -> 0x0035, all -> 0x002b }
        L_0x0015:
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            r4.<init>(r1)     // Catch:{ Exception -> 0x0035, all -> 0x002b }
            r4.write(r5)     // Catch:{ Exception -> 0x0029, all -> 0x0025 }
            r4.flush()     // Catch:{ Exception -> 0x0023 }
            r4.close()     // Catch:{ Exception -> 0x0023 }
        L_0x0023:
            r4 = 1
            return r4
        L_0x0025:
            r5 = move-exception
            r0 = r4
            r4 = r5
            goto L_0x002c
        L_0x0029:
            goto L_0x0036
        L_0x002b:
            r4 = move-exception
        L_0x002c:
            if (r0 == 0) goto L_0x0034
            r0.flush()     // Catch:{ Exception -> 0x0034 }
            r0.close()     // Catch:{ Exception -> 0x0034 }
        L_0x0034:
            throw r4
        L_0x0035:
            r4 = r0
        L_0x0036:
            if (r4 == 0) goto L_0x003e
            r4.flush()     // Catch:{ Exception -> 0x003e }
            r4.close()     // Catch:{ Exception -> 0x003e }
        L_0x003e:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.b.a(java.lang.String, byte[]):boolean");
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0022 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private byte[] a(java.io.InputStream r5) {
        /*
            r4 = this;
            r0 = 8192(0x2000, float:1.14794E-41)
            byte[] r0 = new byte[r0]
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream
            r1.<init>()
        L_0x0009:
            int r2 = r5.read(r0)     // Catch:{ Exception -> 0x0022, all -> 0x001d }
            r3 = -1
            if (r2 == r3) goto L_0x0015
            r3 = 0
            r1.write(r0, r3, r2)     // Catch:{ Exception -> 0x0022, all -> 0x001d }
            goto L_0x0009
        L_0x0015:
            byte[] r0 = r1.toByteArray()     // Catch:{ Exception -> 0x0022, all -> 0x001d }
            r5.close()     // Catch:{ Exception -> 0x001c }
        L_0x001c:
            return r0
        L_0x001d:
            r0 = move-exception
            r5.close()     // Catch:{ Exception -> 0x0021 }
        L_0x0021:
            throw r0
        L_0x0022:
            r5.close()     // Catch:{ Exception -> 0x0025 }
        L_0x0025:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.b.a(java.io.InputStream):byte[]");
    }

    private byte[] a(Map<String, List<String>> map) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(map);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            objectOutputStream.close();
            return byteArray;
        } catch (IOException unused) {
            return null;
        }
    }

    private static File b(Context context) {
        return new File(context.getFilesDir(), "we_http_cache");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r3.isClosed() == false) goto L_0x0048;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0046, code lost:
        if (r3.isClosed() != false) goto L_0x004b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0048, code lost:
        r3.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean b(int r3) {
        /*
            r2 = this;
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r0 = "SELECT file FROM cache_table WHERE id="
            java.lang.String r3 = r0.concat(r3)
            r0 = 0
            android.database.Cursor r3 = r2.a((java.lang.String) r3, (java.lang.String[]) r0)
            if (r3 == 0) goto L_0x004b
            boolean r0 = r3.moveToFirst()     // Catch:{ Exception -> 0x0041, all -> 0x0036 }
            if (r0 == 0) goto L_0x002f
            java.lang.String r0 = "file"
            int r0 = r3.getColumnIndex(r0)     // Catch:{ Exception -> 0x0041, all -> 0x0036 }
            java.lang.String r0 = r3.getString(r0)     // Catch:{ Exception -> 0x0041, all -> 0x0036 }
            boolean r0 = r2.b((java.lang.String) r0)     // Catch:{ Exception -> 0x0041, all -> 0x0036 }
            boolean r1 = r3.isClosed()
            if (r1 != 0) goto L_0x002e
            r3.close()
        L_0x002e:
            return r0
        L_0x002f:
            boolean r0 = r3.isClosed()
            if (r0 != 0) goto L_0x004b
            goto L_0x0048
        L_0x0036:
            r0 = move-exception
            boolean r1 = r3.isClosed()
            if (r1 != 0) goto L_0x0040
            r3.close()
        L_0x0040:
            throw r0
        L_0x0041:
            boolean r0 = r3.isClosed()
            if (r0 != 0) goto L_0x004b
        L_0x0048:
            r3.close()
        L_0x004b:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.b.b(int):boolean");
    }

    private boolean b(String str) {
        if (!k.c(str)) {
            try {
                return new File(g(), str).delete();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private long c() {
        Cursor a2 = a("SELECT SUM(file_size) FROM cache_table", (String[]) null);
        if (a2 != null) {
            try {
                if (a2.moveToFirst()) {
                    long j = (long) a2.getInt(0);
                    if (!a2.isClosed()) {
                        a2.close();
                    }
                    return j;
                }
                if (!a2.isClosed()) {
                    a2.close();
                }
                return 0;
            } catch (Exception unused) {
                if (!a2.isClosed()) {
                    a2.close();
                }
            } catch (Throwable th) {
                if (!a2.isClosed()) {
                    a2.close();
                }
                throw th;
            }
        }
        return 0;
    }

    private File g() {
        File b2 = b(this.f5580a);
        if (!b2.exists()) {
            b2.mkdir();
        }
        return b2;
    }

    public int a() {
        Cursor a2 = a("SELECT id FROM cache_table ORDER BY timestamp ASC LIMIT 0,1", (String[]) null);
        int i = (a2 == null || !a2.moveToFirst()) ? -1 : a2.getInt(0);
        if (a2 != null && !a2.isClosed()) {
            a2.close();
        }
        return i;
    }

    public int a(Set<String> set) {
        if (!(set == null || set.size() == 0)) {
            HashSet hashSet = new HashSet();
            for (String next : set) {
                if (b(String.valueOf(next.hashCode()))) {
                    hashSet.add(next);
                }
            }
            if (hashSet.size() > 0) {
                return a("cache_table", "url in (" + new String(new char[(hashSet.size() - 1)]).replaceAll("\u0000", "?,") + "?)", (String[]) hashSet.toArray(new String[hashSet.size()]));
            }
        }
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x00aa, code lost:
        if (r0.isClosed() == false) goto L_0x00bf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x00bd, code lost:
        if (r0.isClosed() != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x00bf, code lost:
        r0.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.webengage.sdk.android.utils.a.g a(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "select * from cache_table where url=\""
            r0.<init>(r1)
            r0.append(r9)
            java.lang.String r1 = "\""
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r1 = 0
            android.database.Cursor r0 = r8.a((java.lang.String) r0, (java.lang.String[]) r1)
            com.webengage.sdk.android.utils.a.g$a r2 = new com.webengage.sdk.android.utils.a.g$a
            r2.<init>()
            r3 = 0
            if (r0 == 0) goto L_0x00c2
            boolean r4 = r0.moveToFirst()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            if (r4 == 0) goto L_0x00a6
            int r4 = r0.getInt(r3)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((int) r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r4 = "url"
            int r4 = r0.getColumnIndex(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r4 = r0.getString(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.b((java.lang.String) r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r4 = "file"
            int r4 = r0.getColumnIndex(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r4 = r0.getString(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r6.<init>()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.io.File r7 = r8.g()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r7 = r7.getAbsolutePath()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r6.append(r7)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r7 = "/"
            r6.append(r7)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r6.append(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r4 = r6.toString()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r5.<init>(r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((java.io.InputStream) r5)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((java.lang.Exception) r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((boolean) r3)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r1 = -1
            r2.b((int) r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r1 = "headers"
            int r1 = r0.getColumnIndex(r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            byte[] r1 = r0.getBlob(r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.util.Map r1 = r8.a((byte[]) r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((java.util.Map<java.lang.String, java.util.List<java.lang.String>>) r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r1 = "timestamp"
            int r1 = r0.getColumnIndex(r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.String r1 = r0.getString(r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            long r4 = r1.longValue()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            r2.a((long) r4)     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            com.webengage.sdk.android.utils.a.g r9 = r2.a()     // Catch:{ Exception -> 0x00b8, all -> 0x00ad }
            boolean r1 = r0.isClosed()
            if (r1 != 0) goto L_0x00a5
            r0.close()
        L_0x00a5:
            return r9
        L_0x00a6:
            boolean r1 = r0.isClosed()
            if (r1 != 0) goto L_0x00c2
            goto L_0x00bf
        L_0x00ad:
            r9 = move-exception
            boolean r1 = r0.isClosed()
            if (r1 != 0) goto L_0x00b7
            r0.close()
        L_0x00b7:
            throw r9
        L_0x00b8:
            boolean r1 = r0.isClosed()
            if (r1 != 0) goto L_0x00c2
        L_0x00bf:
            r0.close()
        L_0x00c2:
            r2.b((java.lang.String) r9)
            java.io.FileNotFoundException r0 = new java.io.FileNotFoundException
            java.lang.String r9 = java.lang.String.valueOf(r9)
            java.lang.String r1 = "Unable to find file in cache : "
            java.lang.String r9 = r1.concat(r9)
            r0.<init>(r9)
            r2.a((java.lang.Exception) r0)
            r2.a((boolean) r3)
            com.webengage.sdk.android.utils.a.g r9 = r2.a()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.utils.a.b.a(java.lang.String):com.webengage.sdk.android.utils.a.g");
    }

    public void a(int i) {
        if (b(i)) {
            a("cache_table", "id= ?", new String[]{Integer.toString(i)});
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format("CREATE TABLE %S (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s BLOB, %s TEXT, %s REAL, %s INTEGER)", new Object[]{"cache_table", "id", "url", AppMeasurement.d.TIMESTAMP, "headers", "file", "file_size", "flags"}));
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", new Object[]{"cache_table"}));
        a(sQLiteDatabase);
        try {
            a(g());
        } catch (Exception unused) {
        }
    }

    public byte[] a(g gVar) {
        if (f() + c() > 20971520) {
            int a2 = a();
            if (a2 != -1) {
                a(a2);
            }
        }
        String j = gVar.j();
        String valueOf = String.valueOf(j.hashCode());
        byte[] a3 = a(gVar.e());
        if (a(valueOf, a3)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("url", j);
            contentValues.put(AppMeasurement.d.TIMESTAMP, String.valueOf(gVar.k()));
            contentValues.put("headers", a(gVar.b()));
            contentValues.put("file", valueOf);
            contentValues.put("file_size", Long.valueOf(a3 != null ? (long) a3.length : 0));
            contentValues.put("flags", Integer.valueOf(gVar.h()));
            if (((long) a("cache_table", contentValues, "url = ?", new String[]{gVar.j()})) <= 0) {
                a("cache_table", contentValues);
            }
        }
        return a3;
    }

    public Set<String> b() {
        HashSet hashSet = new HashSet();
        Cursor a2 = a("select url from cache_table where flags & 1 != 1", (String[]) null);
        if (a2 != null) {
            if (a2.moveToFirst()) {
                do {
                    hashSet.add(a2.getString(a2.getColumnIndex("url")));
                } while (a2.moveToNext());
            }
            a2.close();
        }
        return hashSet;
    }

    public void b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", new Object[]{"cache_table"}));
        a(sQLiteDatabase);
        try {
            a(g());
        } catch (Exception unused) {
        }
    }
}
