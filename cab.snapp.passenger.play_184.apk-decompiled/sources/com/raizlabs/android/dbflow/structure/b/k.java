package com.raizlabs.android.dbflow.structure.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.config.c;

public final class k extends SQLiteOpenHelper implements l {

    /* renamed from: a  reason: collision with root package name */
    private e f5235a;

    /* renamed from: b  reason: collision with root package name */
    private a f5236b;

    class a extends SQLiteOpenHelper implements l {

        /* renamed from: b  reason: collision with root package name */
        private a f5238b;
        private final c c;

        public final void backupDB() {
        }

        public final void closeDB() {
        }

        public final e getDelegate() {
            return null;
        }

        public final boolean isDatabaseIntegrityOk() {
            return false;
        }

        public final void performRestoreFromBackup() {
        }

        public final void setDatabaseListener(f fVar) {
        }

        public a(Context context, String str, int i, c cVar) {
            super(context, str, null, i);
            this.c = new c(cVar);
        }

        public final i getDatabase() {
            if (this.f5238b == null) {
                this.f5238b = a.from(getWritableDatabase());
            }
            return this.f5238b;
        }

        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.c.onCreate(a.from(sQLiteDatabase));
        }

        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.c.onUpgrade(a.from(sQLiteDatabase), i, i2);
        }

        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            this.c.onOpen(a.from(sQLiteDatabase));
        }

        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.c.onDowngrade(a.from(sQLiteDatabase), i, i2);
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public k(c cVar, f fVar) {
        super(FlowManager.getContext(), cVar.isInMemory() ? null : cVar.getDatabaseFileName(), null, cVar.getDatabaseVersion());
        this.f5235a = new e(fVar, cVar, cVar.backupEnabled() ? new a(FlowManager.getContext(), e.getTempDbFileName(cVar), cVar.getDatabaseVersion(), cVar) : null);
    }

    public final void performRestoreFromBackup() {
        this.f5235a.performRestoreFromBackup();
    }

    public final e getDelegate() {
        return this.f5235a;
    }

    public final boolean isDatabaseIntegrityOk() {
        return this.f5235a.isDatabaseIntegrityOk();
    }

    public final void backupDB() {
        this.f5235a.backupDB();
    }

    public final i getDatabase() {
        a aVar = this.f5236b;
        if (aVar == null || !aVar.getDatabase().isOpen()) {
            this.f5236b = a.from(getWritableDatabase());
        }
        return this.f5236b;
    }

    public final void setDatabaseListener(f fVar) {
        this.f5235a.setDatabaseHelperListener(fVar);
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f5235a.onCreate(a.from(sQLiteDatabase));
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f5235a.onUpgrade(a.from(sQLiteDatabase), i, i2);
    }

    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        this.f5235a.onOpen(a.from(sQLiteDatabase));
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.f5235a.onDowngrade(a.from(sQLiteDatabase), i, i2);
    }

    public final void closeDB() {
        getDatabase();
        this.f5236b.getDatabase().close();
    }
}
