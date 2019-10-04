package com.webengage.sdk.android.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

public abstract class b extends SQLiteOpenHelper {
    public b(Context context, String str, int i) {
        super(context, str, null, i);
    }

    public int a(String str, ContentValues contentValues, String str2, String[] strArr) {
        int i = 1;
        while (i <= 3) {
            try {
                return e().update(str, contentValues, str2, strArr);
            } catch (Exception unused) {
                i++;
            }
        }
        return -1;
    }

    public int a(String str, String str2, String[] strArr) {
        int i = 1;
        while (i <= 3) {
            try {
                return e().delete(str, str2, strArr);
            } catch (Exception unused) {
                i++;
            }
        }
        return -1;
    }

    public long a(String str, ContentValues contentValues) {
        int i = 1;
        while (i <= 3) {
            try {
                return e().insertOrThrow(str, null, contentValues);
            } catch (Exception unused) {
                i++;
            }
        }
        return -1;
    }

    public Cursor a(String str, String[] strArr) {
        int i = 1;
        while (i <= 3) {
            try {
                return d().rawQuery(str, strArr);
            } catch (Exception unused) {
                i++;
            }
        }
        return null;
    }

    public abstract void a(SQLiteDatabase sQLiteDatabase);

    public abstract void a(SQLiteDatabase sQLiteDatabase, int i, int i2);

    public abstract void b(SQLiteDatabase sQLiteDatabase, int i, int i2);

    /* access modifiers changed from: protected */
    public SQLiteDatabase d() {
        int i = 1;
        while (i <= 3) {
            try {
                return getReadableDatabase();
            } catch (Exception unused) {
                i++;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public SQLiteDatabase e() {
        int i = 1;
        while (i <= 3) {
            try {
                return getWritableDatabase();
            } catch (Exception unused) {
                i++;
            }
        }
        return null;
    }

    public long f() {
        try {
            return new File(d().getPath()).length();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase);
    }

    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        b(sQLiteDatabase, i, i2);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        a(sQLiteDatabase, i, i2);
    }
}
