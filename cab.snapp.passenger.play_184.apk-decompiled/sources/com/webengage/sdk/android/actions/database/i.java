package com.webengage.sdk.android.actions.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.webengage.sdk.android.l;
import com.webengage.sdk.android.utils.b;
import com.webengage.sdk.android.utils.k;
import java.util.HashMap;
import java.util.List;

public class i extends b {

    /* renamed from: a  reason: collision with root package name */
    private static i f5362a;

    private i(Context context) {
        super(context, "event_data.db", 2);
    }

    public static i a(Context context) {
        if (f5362a == null) {
            synchronized (i.class) {
                if (f5362a == null) {
                    f5362a = new i(context);
                }
            }
        }
        return f5362a;
    }

    public int a() {
        Cursor a2 = a("SELECT id FROM events ORDER BY event_time ASC LIMIT 0,1", (String[]) null);
        int i = (a2 == null || !a2.moveToFirst()) ? -1 : a2.getInt(0);
        if (a2 != null && !a2.isClosed()) {
            a2.close();
        }
        return i;
    }

    public int a(List<String> list) {
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return a("events", "id in (" + new String(new char[(list.size() - 1)]).replaceAll("\u0000", "?,") + "?)", (String[]) list.toArray(new String[list.size()]));
    }

    public long a(l lVar) {
        if (f() > 3145728) {
            int a2 = a();
            if (a2 != -1) {
                a("events", "id = ?", new String[]{Integer.toString(a2)});
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("license_code", lVar.b());
        contentValues.put("interface_id", lVar.a());
        contentValues.put("luid", lVar.d());
        contentValues.put("suid", lVar.e());
        contentValues.put("cuid", lVar.g());
        contentValues.put("category", lVar.f());
        contentValues.put("event_name", lVar.h());
        contentValues.put("event_time", k.a((Object) lVar.i()));
        contentValues.put("event_data", k.a((Object) lVar.j()));
        if (lVar.k() == null) {
            contentValues.put("system_data", k.a((Object) new HashMap()));
        } else {
            contentValues.put("system_data", k.a((Object) lVar.k()));
        }
        contentValues.put("sync_state", "NOT_SYNCED");
        return a("events", contentValues);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0133, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0138, code lost:
        return r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.util.ArrayList<com.webengage.sdk.android.l> a(int r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch:{ all -> 0x0139 }
            r0.<init>()     // Catch:{ all -> 0x0139 }
            java.lang.String r1 = "select  * from events where sync_state=\"NOT_SYNCED\" or sync_state=\"FAILED\" ORDER BY event_time ASC LIMIT 0,"
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch:{ all -> 0x0139 }
            java.lang.String r8 = r1.concat(r8)     // Catch:{ all -> 0x0139 }
            r1 = 0
            android.database.Cursor r8 = r7.a((java.lang.String) r8, (java.lang.String[]) r1)     // Catch:{ all -> 0x0139 }
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch:{ all -> 0x0139 }
            r1.<init>()     // Catch:{ all -> 0x0139 }
            java.lang.String r2 = "sync_state"
            java.lang.String r3 = "SYNCING"
            r1.put(r2, r3)     // Catch:{ all -> 0x0139 }
            if (r8 == 0) goto L_0x0137
            boolean r2 = r8.moveToFirst()     // Catch:{ all -> 0x0139 }
            if (r2 == 0) goto L_0x0134
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch:{ all -> 0x0139 }
            r2.<init>()     // Catch:{ all -> 0x0139 }
        L_0x002e:
            com.webengage.sdk.android.l r3 = new com.webengage.sdk.android.l     // Catch:{ all -> 0x0139 }
            r3.<init>()     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "id"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            int r4 = r8.getInt(r4)     // Catch:{ all -> 0x0139 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0139 }
            r3.a((java.lang.Integer) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "interface_id"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.a((java.lang.String) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "license_code"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.b((java.lang.String) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "luid"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.c((java.lang.String) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "suid"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.d(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "cuid"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.f(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "category"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.e(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "event_name"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = r8.getString(r4)     // Catch:{ all -> 0x0139 }
            r3.g(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "event_time"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            byte[] r4 = r8.getBlob(r4)     // Catch:{ all -> 0x0139 }
            java.lang.Object r4 = com.webengage.sdk.android.utils.k.a((byte[]) r4)     // Catch:{ all -> 0x0139 }
            java.util.Date r4 = (java.util.Date) r4     // Catch:{ all -> 0x0139 }
            r3.a((java.util.Date) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "event_data"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            byte[] r4 = r8.getBlob(r4)     // Catch:{ all -> 0x0139 }
            java.lang.Object r4 = com.webengage.sdk.android.utils.k.a((byte[]) r4)     // Catch:{ all -> 0x0139 }
            java.util.Map r4 = (java.util.Map) r4     // Catch:{ all -> 0x0139 }
            r3.a((java.util.Map<java.lang.String, java.lang.Object>) r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "system_data"
            int r4 = r8.getColumnIndex(r4)     // Catch:{ all -> 0x0139 }
            byte[] r4 = r8.getBlob(r4)     // Catch:{ all -> 0x0139 }
            java.lang.Object r4 = com.webengage.sdk.android.utils.k.a((byte[]) r4)     // Catch:{ all -> 0x0139 }
            java.util.Map r4 = (java.util.Map) r4     // Catch:{ all -> 0x0139 }
            r3.b((java.util.Map<java.lang.String, java.lang.Object>) r4)     // Catch:{ all -> 0x0139 }
            java.lang.Integer r4 = r3.c()     // Catch:{ all -> 0x0139 }
            int r4 = r4.intValue()     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = java.lang.Integer.toString(r4)     // Catch:{ all -> 0x0139 }
            r2.add(r4)     // Catch:{ all -> 0x0139 }
            r0.add(r3)     // Catch:{ all -> 0x0139 }
            boolean r3 = r8.moveToNext()     // Catch:{ all -> 0x0139 }
            if (r3 != 0) goto L_0x002e
            r8.close()     // Catch:{ all -> 0x0139 }
            int r8 = r2.size()     // Catch:{ all -> 0x0139 }
            if (r8 <= 0) goto L_0x0132
            java.lang.String r8 = "events"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "id in ("
            r3.<init>(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = new java.lang.String     // Catch:{ all -> 0x0139 }
            int r5 = r2.size()     // Catch:{ all -> 0x0139 }
            int r5 = r5 + -1
            char[] r5 = new char[r5]     // Catch:{ all -> 0x0139 }
            r4.<init>(r5)     // Catch:{ all -> 0x0139 }
            java.lang.String r5 = "\u0000"
            java.lang.String r6 = "?,"
            java.lang.String r4 = r4.replaceAll(r5, r6)     // Catch:{ all -> 0x0139 }
            r3.append(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r4 = "?)"
            r3.append(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0139 }
            int r4 = r2.size()     // Catch:{ all -> 0x0139 }
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ all -> 0x0139 }
            java.lang.Object[] r2 = r2.toArray(r4)     // Catch:{ all -> 0x0139 }
            java.lang.String[] r2 = (java.lang.String[]) r2     // Catch:{ all -> 0x0139 }
            r7.a(r8, r1, r3, r2)     // Catch:{ all -> 0x0139 }
        L_0x0132:
            monitor-exit(r7)
            return r0
        L_0x0134:
            r8.close()     // Catch:{ all -> 0x0139 }
        L_0x0137:
            monitor-exit(r7)
            return r0
        L_0x0139:
            r8 = move-exception
            monitor-exit(r7)
            goto L_0x013d
        L_0x013c:
            throw r8
        L_0x013d:
            goto L_0x013c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.i.a(int):java.util.ArrayList");
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format("CREATE TABLE %S (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s TEXT,%s TEXT, %s TEXT, %s TEXT,%s TEXT ,%s BLOB,%s BLOB ,%s BLOB,%s TEXT)", new Object[]{"events", "id", "license_code", "interface_id", "luid", "suid", "cuid", "category", "event_name", "event_time", "event_data", "system_data", "sync_state"}));
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.lang.String[], android.database.Cursor] */
    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        r6.execSQL(java.lang.String.format("DROP TABLE IF EXISTS %s", new java.lang.Object[]{"events"}));
        a(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0040, code lost:
        if (r2 != 0) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0042, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0045, code lost:
        throw r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002a, code lost:
        r6 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x002c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.database.sqlite.SQLiteDatabase r6, int r7, int r8) {
        /*
            r5 = this;
            java.lang.String r7 = "events"
            java.lang.String r8 = "DROP TABLE IF EXISTS %s"
            r0 = 0
            r1 = 1
            r2 = 0
            java.lang.String r3 = "SELECT * FROM events LIMIT 0"
            android.database.Cursor r2 = r6.rawQuery(r3, r2)     // Catch:{ SQLException -> 0x002c }
            java.lang.String r3 = "interface_id"
            int r3 = r2.getColumnIndex(r3)     // Catch:{ SQLException -> 0x002c }
            r4 = -1
            if (r3 != r4) goto L_0x0024
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch:{ SQLException -> 0x002c }
            r3[r0] = r7     // Catch:{ SQLException -> 0x002c }
            java.lang.String r3 = java.lang.String.format(r8, r3)     // Catch:{ SQLException -> 0x002c }
            r6.execSQL(r3)     // Catch:{ SQLException -> 0x002c }
            r5.a((android.database.sqlite.SQLiteDatabase) r6)     // Catch:{ SQLException -> 0x002c }
        L_0x0024:
            if (r2 == 0) goto L_0x003f
            r2.close()
            return
        L_0x002a:
            r6 = move-exception
            goto L_0x0040
        L_0x002c:
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x002a }
            r1[r0] = r7     // Catch:{ all -> 0x002a }
            java.lang.String r7 = java.lang.String.format(r8, r1)     // Catch:{ all -> 0x002a }
            r6.execSQL(r7)     // Catch:{ all -> 0x002a }
            r5.a((android.database.sqlite.SQLiteDatabase) r6)     // Catch:{ all -> 0x002a }
            if (r2 == 0) goto L_0x003f
            r2.close()
        L_0x003f:
            return
        L_0x0040:
            if (r2 == 0) goto L_0x0045
            r2.close()
        L_0x0045:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.database.i.a(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    public int b() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sync_state", "NOT_SYNCED");
        return a("events", contentValues, "sync_state=\"SYNCING\"", null);
    }

    public int b(List<String> list) {
        if (list == null || list.size() <= 0) {
            return 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("sync_state", "FAILED");
        return a("events", contentValues, "id in (" + new String(new char[(list.size() - 1)]).replaceAll("\u0000", "?,") + "?)", (String[]) list.toArray(new String[list.size()]));
    }

    public void b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s", new Object[]{"events"}));
        a(sQLiteDatabase);
    }

    public int c() {
        Cursor a2 = a("select count(*) from events where sync_state=\"NOT_SYNCED\" or sync_state=\"FAILED\"", (String[]) null);
        int i = 0;
        if (a2 != null) {
            if (a2.moveToFirst()) {
                i = a2.getInt(0);
            }
            a2.close();
        }
        return i;
    }
}
