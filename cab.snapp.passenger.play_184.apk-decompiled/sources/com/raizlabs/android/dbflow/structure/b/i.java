package com.raizlabs.android.dbflow.structure.b;

import android.content.ContentValues;

public interface i {
    void beginTransaction();

    g compileStatement(String str);

    int delete(String str, String str2, String[] strArr);

    void endTransaction();

    void execSQL(String str);

    int getVersion();

    long insertWithOnConflict(String str, String str2, ContentValues contentValues, int i);

    j query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5);

    j rawQuery(String str, String[] strArr);

    void setTransactionSuccessful();

    long updateWithOnConflict(String str, ContentValues contentValues, String str2, String[] strArr, int i);
}
