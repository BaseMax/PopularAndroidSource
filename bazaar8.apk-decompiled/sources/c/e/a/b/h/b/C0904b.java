package c.e.a.b.h.b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: c.e.a.b.h.b.b  reason: case insensitive filesystem */
public final class C0904b {
    public static Set<String> a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    public static void a(C0957t tVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        if (tVar != null) {
            if (!a(tVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            if (tVar != null) {
                try {
                    Set<String> a2 = a(sQLiteDatabase, str);
                    String[] split = str3.split(",");
                    int length = split.length;
                    int i2 = 0;
                    while (i2 < length) {
                        String str4 = split[i2];
                        if (a2.remove(str4)) {
                            i2++;
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str4).length());
                            sb.append("Table ");
                            sb.append(str);
                            sb.append(" is missing required column: ");
                            sb.append(str4);
                            throw new SQLiteException(sb.toString());
                        }
                    }
                    if (strArr != null) {
                        for (int i3 = 0; i3 < strArr.length; i3 += 2) {
                            if (!a2.remove(strArr[i3])) {
                                sQLiteDatabase.execSQL(strArr[i3 + 1]);
                            }
                        }
                    }
                    if (!a2.isEmpty()) {
                        tVar.w().a("Table has extra columns. table, columns", str, TextUtils.join(", ", a2));
                    }
                } catch (SQLiteException e2) {
                    tVar.t().a("Failed to verify columns on table that was just created", str);
                    throw e2;
                }
            } else {
                throw new IllegalArgumentException("Monitor must not be null");
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    public static boolean a(C0957t tVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (tVar != null) {
            Cursor cursor = null;
            try {
                Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{DefaultAppMeasurementEventListenerRegistrar.NAME}, "name=?", new String[]{str}, null, null, null);
                boolean moveToFirst = query.moveToFirst();
                if (query != null) {
                    query.close();
                }
                return moveToFirst;
            } catch (SQLiteException e2) {
                tVar.w().a("Error querying for table", str, e2);
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
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    public static void a(C0957t tVar, SQLiteDatabase sQLiteDatabase) {
        if (tVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                tVar.w().a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                tVar.w().a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                tVar.w().a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                tVar.w().a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
