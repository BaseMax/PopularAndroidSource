package com.google.android.gms.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

final class aj extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ai f3060a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    aj(ai aiVar, Context context, String str) {
        super(context, str, null, 1);
        this.f3060a = aiVar;
    }

    private static void a(SQLiteDatabase sQLiteDatabase) {
        Set<String> b2 = b(sQLiteDatabase, "properties");
        String[] strArr = {"app_uid", "cid", "tid", "params", "adid", "hits_count"};
        for (int i = 0; i < 6; i++) {
            String str = strArr[i];
            if (!b2.remove(str)) {
                String valueOf = String.valueOf(str);
                throw new SQLiteException(valueOf.length() != 0 ? "Database properties is missing required column: ".concat(valueOf) : new String("Database properties is missing required column: "));
            }
        }
        if (!b2.isEmpty()) {
            throw new SQLiteException("Database properties table has extra columns");
        }
    }

    private final boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursor = null;
        try {
            Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            boolean moveToFirst = query.moveToFirst();
            if (query != null) {
                query.close();
            }
            return moveToFirst;
        } catch (SQLiteException e) {
            this.f3060a.zzc("Error querying for table", str, e);
            if (cursor != null) {
                cursor.close();
            }
            return false;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static Set<String> b(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            String[] columnNames = rawQuery.getColumnNames();
            for (String add : columnNames) {
                hashSet.add(add);
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        if (be.version() >= 9) {
            File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onOpen(android.database.sqlite.SQLiteDatabase r8) {
        /*
            r7 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 15
            if (r0 >= r1) goto L_0x0019
            r0 = 0
            java.lang.String r1 = "PRAGMA journal_mode=memory"
            android.database.Cursor r0 = r8.rawQuery(r1, r0)
            r0.moveToFirst()     // Catch:{ all -> 0x0014 }
            r0.close()
            goto L_0x0019
        L_0x0014:
            r8 = move-exception
            r0.close()
            throw r8
        L_0x0019:
            java.lang.String r0 = "hits2"
            boolean r1 = r7.a(r8, r0)
            if (r1 != 0) goto L_0x0029
            java.lang.String r0 = com.google.android.gms.internal.ai.f3058a
        L_0x0025:
            r8.execSQL(r0)
            goto L_0x0080
        L_0x0029:
            java.util.Set r0 = b(r8, r0)
            r1 = 4
            java.lang.String[] r2 = new java.lang.String[r1]
            r3 = 0
            java.lang.String r4 = "hit_id"
            r2[r3] = r4
            r4 = 1
            java.lang.String r5 = "hit_string"
            r2[r4] = r5
            r5 = 2
            java.lang.String r6 = "hit_time"
            r2[r5] = r6
            r5 = 3
            java.lang.String r6 = "hit_url"
            r2[r5] = r6
        L_0x0044:
            if (r3 >= r1) goto L_0x006e
            r5 = r2[r3]
            boolean r6 = r0.remove(r5)
            if (r6 != 0) goto L_0x006b
            android.database.sqlite.SQLiteException r8 = new android.database.sqlite.SQLiteException
            java.lang.String r0 = "Database hits2 is missing required column: "
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r2 = r1.length()
            if (r2 == 0) goto L_0x0061
            java.lang.String r0 = r0.concat(r1)
            goto L_0x0067
        L_0x0061:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r0)
            r0 = r1
        L_0x0067:
            r8.<init>(r0)
            throw r8
        L_0x006b:
            int r3 = r3 + 1
            goto L_0x0044
        L_0x006e:
            java.lang.String r1 = "hit_app_id"
            boolean r1 = r0.remove(r1)
            r1 = r1 ^ r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0092
            if (r1 == 0) goto L_0x0080
            java.lang.String r0 = "ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER"
            goto L_0x0025
        L_0x0080:
            java.lang.String r0 = "properties"
            boolean r0 = r7.a(r8, r0)
            if (r0 != 0) goto L_0x008e
            java.lang.String r0 = "CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;"
            r8.execSQL(r0)
            return
        L_0x008e:
            a(r8)
            return
        L_0x0092:
            android.database.sqlite.SQLiteException r8 = new android.database.sqlite.SQLiteException
            java.lang.String r0 = "Database hits2 has extra columns"
            r8.<init>(r0)
            goto L_0x009b
        L_0x009a:
            throw r8
        L_0x009b:
            goto L_0x009a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.aj.onOpen(android.database.sqlite.SQLiteDatabase):void");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    public final SQLiteDatabase getWritableDatabase() {
        if (this.f3060a.e.zzu(3600000)) {
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException unused) {
                this.f3060a.e.start();
                this.f3060a.zzdy("Opening the database failed, dropping the table and recreating it");
                this.f3060a.zzdta.getContext().getDatabasePath(ai.d()).delete();
                try {
                    SQLiteDatabase writableDatabase = super.getWritableDatabase();
                    this.f3060a.e.clear();
                    return writableDatabase;
                } catch (SQLiteException e) {
                    this.f3060a.zze("Failed to open freshly created database", e);
                    throw e;
                }
            }
        } else {
            throw new SQLiteException("Database open failed");
        }
    }
}
