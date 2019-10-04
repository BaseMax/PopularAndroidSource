package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.google.firebase.analytics.FirebaseAnalytics;

public class fl {

    /* renamed from: a  reason: collision with root package name */
    private final fy f6014a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6015b;

    public fl(fy fyVar, String str) {
        this.f6014a = fyVar;
        this.f6015b = str;
    }

    public void a(String str, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f6014a.a();
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("data_key", str);
                contentValues.put(FirebaseAnalytics.b.VALUE, bArr);
                sQLiteDatabase.insertWithOnConflict(this.f6015b, null, contentValues, 5);
                this.f6014a.a(sQLiteDatabase);
            } catch (Exception unused) {
                sQLiteDatabase2 = sQLiteDatabase;
                this.f6014a.a(sQLiteDatabase2);
            } catch (Throwable th) {
                th = th;
                this.f6014a.a(sQLiteDatabase);
                throw th;
            }
        } catch (Exception unused2) {
            this.f6014a.a(sQLiteDatabase2);
        } catch (Throwable th2) {
            th = th2;
            sQLiteDatabase = null;
            this.f6014a.a(sQLiteDatabase);
            throw th;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: byte[]} */
    /* JADX WARNING: type inference failed for: r0v0 */
    /* JADX WARNING: type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] a(java.lang.String r13) {
        /*
            r12 = this;
            r0 = 0
            com.yandex.metrica.impl.ob.fy r1 = r12.f6014a     // Catch:{ Exception -> 0x0050, all -> 0x0045 }
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch:{ Exception -> 0x0050, all -> 0x0045 }
            java.lang.String r3 = r12.f6015b     // Catch:{ Exception -> 0x0043, all -> 0x0041 }
            java.lang.String[] r4 = com.yandex.metrica.impl.ob.fm.b.f6029a     // Catch:{ Exception -> 0x0043, all -> 0x0041 }
            java.lang.String r5 = "data_key = ?"
            r10 = 1
            java.lang.String[] r6 = new java.lang.String[r10]     // Catch:{ Exception -> 0x0043, all -> 0x0041 }
            r2 = 0
            r6[r2] = r13     // Catch:{ Exception -> 0x0043, all -> 0x0041 }
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r1
            android.database.Cursor r13 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch:{ Exception -> 0x0043, all -> 0x0041 }
            if (r13 == 0) goto L_0x0033
            int r2 = r13.getCount()     // Catch:{ Exception -> 0x0033, all -> 0x003c }
            if (r2 != r10) goto L_0x0033
            boolean r2 = r13.moveToFirst()     // Catch:{ Exception -> 0x0033, all -> 0x003c }
            if (r2 == 0) goto L_0x0033
            java.lang.String r2 = "value"
            int r2 = r13.getColumnIndex(r2)     // Catch:{ Exception -> 0x0033, all -> 0x003c }
            byte[] r0 = r13.getBlob(r2)     // Catch:{ Exception -> 0x0033, all -> 0x003c }
        L_0x0033:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r13)
            com.yandex.metrica.impl.ob.fy r13 = r12.f6014a
            r13.a(r1)
            return r0
        L_0x003c:
            r0 = move-exception
            r11 = r0
            r0 = r13
            r13 = r11
            goto L_0x0047
        L_0x0041:
            r13 = move-exception
            goto L_0x0047
        L_0x0043:
            r13 = r0
            goto L_0x0033
        L_0x0045:
            r13 = move-exception
            r1 = r0
        L_0x0047:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r0)
            com.yandex.metrica.impl.ob.fy r0 = r12.f6014a
            r0.a(r1)
            throw r13
        L_0x0050:
            r13 = r0
            r1 = r13
            goto L_0x0033
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fl.a(java.lang.String):byte[]");
    }
}
