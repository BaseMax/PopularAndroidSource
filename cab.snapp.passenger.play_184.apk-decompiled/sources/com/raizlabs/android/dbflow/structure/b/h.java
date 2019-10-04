package com.raizlabs.android.dbflow.structure.b;

import com.raizlabs.android.dbflow.d.f;
import com.raizlabs.android.dbflow.sql.language.d;

public final class h<TModel> extends d {

    /* renamed from: a  reason: collision with root package name */
    private final g f5232a;

    /* renamed from: b  reason: collision with root package name */
    private final d<TModel> f5233b;

    public h(g gVar, d<TModel> dVar) {
        this.f5232a = gVar;
        this.f5233b = dVar;
    }

    public final long executeUpdateDelete() {
        long executeUpdateDelete = this.f5232a.executeUpdateDelete();
        if (executeUpdateDelete > 0) {
            f.get().notifyTableChanged(this.f5233b.getTable(), this.f5233b.getPrimaryAction());
        }
        return executeUpdateDelete;
    }

    public final void execute() {
        this.f5232a.execute();
    }

    public final void close() {
        this.f5232a.close();
    }

    public final long simpleQueryForLong() {
        return this.f5232a.simpleQueryForLong();
    }

    public final String simpleQueryForString() {
        return this.f5232a.simpleQueryForString();
    }

    public final long executeInsert() {
        long executeInsert = this.f5232a.executeInsert();
        if (executeInsert > 0) {
            f.get().notifyTableChanged(this.f5233b.getTable(), this.f5233b.getPrimaryAction());
        }
        return executeInsert;
    }

    public final void bindString(int i, String str) {
        this.f5232a.bindString(i, str);
    }

    public final void bindNull(int i) {
        this.f5232a.bindNull(i);
    }

    public final void bindLong(int i, long j) {
        this.f5232a.bindLong(i, j);
    }

    public final void bindDouble(int i, double d) {
        this.f5232a.bindDouble(i, d);
    }

    public final void bindBlob(int i, byte[] bArr) {
        this.f5232a.bindBlob(i, bArr);
    }
}
