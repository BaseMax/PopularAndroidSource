package com.raizlabs.android.dbflow.structure.b;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;

public final class a implements i {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteDatabase f5200a;

    public static a from(SQLiteDatabase sQLiteDatabase) {
        return new a(sQLiteDatabase);
    }

    private a(SQLiteDatabase sQLiteDatabase) {
        this.f5200a = sQLiteDatabase;
    }

    public final void execSQL(String str) {
        this.f5200a.execSQL(str);
    }

    public final void beginTransaction() {
        this.f5200a.beginTransaction();
    }

    public final void setTransactionSuccessful() {
        this.f5200a.setTransactionSuccessful();
    }

    public final void endTransaction() {
        this.f5200a.endTransaction();
    }

    public final int getVersion() {
        return this.f5200a.getVersion();
    }

    public final SQLiteDatabase getDatabase() {
        return this.f5200a;
    }

    public final g compileStatement(String str) {
        return b.from(this.f5200a.compileStatement(str), this.f5200a);
    }

    public final j rawQuery(String str, String[] strArr) {
        return j.from(this.f5200a.rawQuery(str, strArr));
    }

    public final long updateWithOnConflict(String str, ContentValues contentValues, String str2, String[] strArr, int i) {
        int i2;
        if (Build.VERSION.SDK_INT >= 8) {
            i2 = this.f5200a.updateWithOnConflict(str, contentValues, str2, strArr, i);
        } else {
            i2 = this.f5200a.update(str, contentValues, str2, strArr);
        }
        return (long) i2;
    }

    public final long insertWithOnConflict(String str, String str2, ContentValues contentValues, int i) {
        if (Build.VERSION.SDK_INT >= 8) {
            return this.f5200a.insertWithOnConflict(str, str2, contentValues, i);
        }
        return this.f5200a.insert(str, str2, contentValues);
    }

    public final j query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return j.from(this.f5200a.query(str, strArr, str2, strArr2, str3, str4, str5));
    }

    public final int delete(String str, String str2, String[] strArr) {
        return this.f5200a.delete(str, str2, strArr);
    }
}
