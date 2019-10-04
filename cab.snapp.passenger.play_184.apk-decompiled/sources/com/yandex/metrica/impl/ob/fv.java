package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
import com.yandex.metrica.impl.ob.fm;

public class fv {

    /* renamed from: a  reason: collision with root package name */
    private final fm.q f6043a;

    /* renamed from: b  reason: collision with root package name */
    private final fm.q f6044b;
    private final SparseArray<fm.q> c;
    private final fw d;

    public fv(fm.q qVar, fm.q qVar2, SparseArray<fm.q> sparseArray, fw fwVar) {
        this.f6043a = qVar;
        this.f6044b = qVar2;
        this.c = sparseArray;
        this.d = fwVar;
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            if (this.d != null && !this.d.a(sQLiteDatabase)) {
                a(sQLiteDatabase, this.f6043a, this.f6044b);
            }
        } catch (Exception unused) {
        }
    }

    public void b(SQLiteDatabase sQLiteDatabase) {
        a(this.f6043a, sQLiteDatabase);
    }

    /* access modifiers changed from: package-private */
    public void a(fm.q qVar, SQLiteDatabase sQLiteDatabase) {
        try {
            qVar.a(sQLiteDatabase);
        } catch (Exception unused) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARNING: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.database.sqlite.SQLiteDatabase r4, int r5, int r6) {
        /*
            r3 = this;
            r0 = 1
            if (r6 <= r5) goto L_0x0017
            r1 = 0
            int r5 = r5 + r0
        L_0x0005:
            if (r5 > r6) goto L_0x0018
            android.util.SparseArray<com.yandex.metrica.impl.ob.fm$q> r2 = r3.c     // Catch:{ Exception -> 0x0017 }
            java.lang.Object r2 = r2.get(r5)     // Catch:{ Exception -> 0x0017 }
            com.yandex.metrica.impl.ob.fm$q r2 = (com.yandex.metrica.impl.ob.fm.q) r2     // Catch:{ Exception -> 0x0017 }
            if (r2 == 0) goto L_0x0014
            r2.a(r4)     // Catch:{ Exception -> 0x0017 }
        L_0x0014:
            int r5 = r5 + 1
            goto L_0x0005
        L_0x0017:
            r1 = 1
        L_0x0018:
            com.yandex.metrica.impl.ob.fw r5 = r3.d
            boolean r5 = r5.a(r4)
            r5 = r5 ^ r0
            r5 = r5 | r1
            if (r5 == 0) goto L_0x0029
            com.yandex.metrica.impl.ob.fm$q r5 = r3.f6043a
            com.yandex.metrica.impl.ob.fm$q r6 = r3.f6044b
            r3.a((android.database.sqlite.SQLiteDatabase) r4, (com.yandex.metrica.impl.ob.fm.q) r5, (com.yandex.metrica.impl.ob.fm.q) r6)
        L_0x0029:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.fv.a(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    /* access modifiers changed from: package-private */
    public void a(SQLiteDatabase sQLiteDatabase, fm.q qVar, fm.q qVar2) {
        try {
            qVar2.a(sQLiteDatabase);
        } catch (Exception unused) {
        }
        a(qVar, sQLiteDatabase);
    }
}
