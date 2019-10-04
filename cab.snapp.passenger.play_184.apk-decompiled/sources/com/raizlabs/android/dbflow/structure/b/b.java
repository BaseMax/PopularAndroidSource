package com.raizlabs.android.dbflow.structure.b;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;

public final class b extends d {

    /* renamed from: a  reason: collision with root package name */
    private final SQLiteStatement f5226a;

    /* renamed from: b  reason: collision with root package name */
    private final SQLiteDatabase f5227b;

    public static b from(SQLiteStatement sQLiteStatement, SQLiteDatabase sQLiteDatabase) {
        return new b(sQLiteStatement, sQLiteDatabase);
    }

    private b(SQLiteStatement sQLiteStatement, SQLiteDatabase sQLiteDatabase) {
        this.f5226a = sQLiteStatement;
        this.f5227b = sQLiteDatabase;
    }

    public final SQLiteStatement getStatement() {
        return this.f5226a;
    }

    /* JADX WARNING: type inference failed for: r0v2, types: [java.lang.String[], android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v3, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v4, types: [android.database.Cursor] */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long executeUpdateDelete() {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r3 = 11
            if (r0 < r3) goto L_0x0010
            android.database.sqlite.SQLiteStatement r0 = r5.f5226a
            int r0 = r0.executeUpdateDelete()
            long r1 = (long) r0
            goto L_0x0049
        L_0x0010:
            android.database.sqlite.SQLiteStatement r0 = r5.f5226a
            r0.execute()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r3 = r5.f5227b     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            java.lang.String r4 = "SELECT changes() AS affected_row_count"
            android.database.Cursor r0 = r3.rawQuery(r4, r0)     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            if (r0 == 0) goto L_0x0039
            int r3 = r0.getCount()     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            if (r3 <= 0) goto L_0x0039
            boolean r3 = r0.moveToFirst()     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            if (r3 == 0) goto L_0x0039
            java.lang.String r3 = "affected_row_count"
            int r3 = r0.getColumnIndex(r3)     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            long r1 = r0.getLong(r3)     // Catch:{ SQLException -> 0x0037, all -> 0x003f }
            goto L_0x0039
        L_0x0037:
            goto L_0x0046
        L_0x0039:
            if (r0 == 0) goto L_0x0049
        L_0x003b:
            r0.close()
            goto L_0x0049
        L_0x003f:
            r1 = move-exception
            if (r0 == 0) goto L_0x0045
            r0.close()
        L_0x0045:
            throw r1
        L_0x0046:
            if (r0 == 0) goto L_0x0049
            goto L_0x003b
        L_0x0049:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.raizlabs.android.dbflow.structure.b.b.executeUpdateDelete():long");
    }

    public final void execute() {
        this.f5226a.execute();
    }

    public final void close() {
        this.f5226a.close();
    }

    public final long simpleQueryForLong() {
        return this.f5226a.simpleQueryForLong();
    }

    public final String simpleQueryForString() {
        return this.f5226a.simpleQueryForString();
    }

    public final long executeInsert() {
        return this.f5226a.executeInsert();
    }

    public final void bindString(int i, String str) {
        this.f5226a.bindString(i, str);
    }

    public final void bindNull(int i) {
        this.f5226a.bindNull(i);
    }

    public final void bindLong(int i, long j) {
        this.f5226a.bindLong(i, j);
    }

    public final void bindDouble(int i, double d) {
        this.f5226a.bindDouble(i, d);
    }

    public final void bindBlob(int i, byte[] bArr) {
        this.f5226a.bindBlob(i, bArr);
    }
}
