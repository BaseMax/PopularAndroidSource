package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.Closeable;

public class fp extends SQLiteOpenHelper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    protected final fv f6035a;

    public fp(Context context, String str, fv fvVar) {
        super(context, str, null, fm.f6017b);
        this.f6035a = fvVar;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f6035a.b(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f6035a.a(sQLiteDatabase, i, i2);
    }

    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        this.f6035a.a(sQLiteDatabase);
    }
}
