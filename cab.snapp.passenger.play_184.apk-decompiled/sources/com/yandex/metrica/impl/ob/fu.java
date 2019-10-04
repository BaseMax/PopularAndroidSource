package com.yandex.metrica.impl.ob;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.bv;
import java.util.ArrayList;
import java.util.List;

public class fu {

    /* renamed from: a  reason: collision with root package name */
    private final fy f6041a;

    /* renamed from: b  reason: collision with root package name */
    private String f6042b;

    public fu(fp fpVar, String str) {
        this.f6041a = new ga(fpVar);
        this.f6042b = str;
    }

    public List<iq> a() {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        Throwable th;
        try {
            sQLiteDatabase = this.f6041a.a();
            try {
                cursor = sQLiteDatabase.query(this.f6042b, null, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            ArrayList arrayList = new ArrayList();
                            do {
                                arrayList.add(new iq(cursor.getString(cursor.getColumnIndex("name")), cursor.getLong(cursor.getColumnIndex("granted")) == 1));
                            } while (cursor.moveToNext());
                            this.f6041a.a(sQLiteDatabase);
                            bv.a(cursor);
                            return arrayList;
                        }
                    } catch (Exception unused) {
                    } catch (Throwable th2) {
                        th = th2;
                        this.f6041a.a(sQLiteDatabase);
                        bv.a(cursor);
                        throw th;
                    }
                }
            } catch (Exception unused2) {
                cursor = null;
            } catch (Throwable th3) {
                Throwable th4 = th3;
                cursor = null;
                th = th4;
                this.f6041a.a(sQLiteDatabase);
                bv.a(cursor);
                throw th;
            }
        } catch (Exception unused3) {
            sQLiteDatabase = null;
            cursor = null;
        } catch (Throwable th5) {
            cursor = null;
            th = th5;
            sQLiteDatabase = null;
            this.f6041a.a(sQLiteDatabase);
            bv.a(cursor);
            throw th;
        }
        this.f6041a.a(sQLiteDatabase);
        bv.a(cursor);
        return null;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0048 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.util.List<com.yandex.metrica.impl.ob.iq> r6) {
        /*
            r5 = this;
            com.yandex.metrica.impl.ob.fy r0 = r5.f6041a
            android.database.sqlite.SQLiteDatabase r0 = r0.a()
            r0.beginTransaction()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            java.lang.String r1 = "delete from permissions"
            r0.execSQL(r1)     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            java.util.Iterator r6 = r6.iterator()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
        L_0x0012:
            boolean r1 = r6.hasNext()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            if (r1 == 0) goto L_0x0045
            java.lang.Object r1 = r6.next()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            com.yandex.metrica.impl.ob.iq r1 = (com.yandex.metrica.impl.ob.iq) r1     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            r2.<init>()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            java.lang.String r3 = "name"
            java.lang.String r4 = r1.b()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            r2.put(r3, r4)     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            java.lang.String r3 = "granted"
            boolean r1 = r1.a()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            if (r1 == 0) goto L_0x0036
            r1 = 1
            goto L_0x0037
        L_0x0036:
            r1 = 0
        L_0x0037:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            r2.put(r3, r1)     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            java.lang.String r1 = "permissions"
            r3 = 0
            r0.insert(r1, r3, r2)     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
            goto L_0x0012
        L_0x0045:
            r0.setTransactionSuccessful()     // Catch:{ SQLException -> 0x0048, all -> 0x0051 }
        L_0x0048:
            r0.endTransaction()     // Catch:{ Exception -> 0x004b }
        L_0x004b:
            com.yandex.metrica.impl.ob.fy r6 = r5.f6041a
            r6.a(r0)
            return
        L_0x0051:
            r6 = move-exception
            r0.endTransaction()     // Catch:{ Exception -> 0x0055 }
        L_0x0055:
            com.yandex.metrica.impl.ob.fy r1 = r5.f6041a
            r1.a(r0)
            goto L_0x005c
        L_0x005b:
            throw r6
        L_0x005c:
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fu.a(java.util.List):void");
    }
}
