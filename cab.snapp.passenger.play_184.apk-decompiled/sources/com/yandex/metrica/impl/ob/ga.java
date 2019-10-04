package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;

public class ga implements fy {

    /* renamed from: a  reason: collision with root package name */
    private final fp f6050a;

    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    public ga(fp fpVar) {
        this.f6050a = fpVar;
    }

    public SQLiteDatabase a() {
        return this.f6050a.getWritableDatabase();
    }
}
