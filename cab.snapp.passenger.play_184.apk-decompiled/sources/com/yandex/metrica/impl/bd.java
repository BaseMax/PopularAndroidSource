package com.yandex.metrica.impl;

import android.database.Cursor;
import com.yandex.metrica.impl.bc;
import com.yandex.metrica.impl.ob.ac;
import com.yandex.metrica.impl.ob.en;
import com.yandex.metrica.impl.ob.ka;
import java.util.Map;

@Deprecated
class bd extends bc {
    /* access modifiers changed from: protected */
    public long D() {
        return Long.MIN_VALUE;
    }

    /* access modifiers changed from: protected */
    public long E() {
        return Long.MIN_VALUE;
    }

    /* access modifiers changed from: protected */
    public boolean a(long j) {
        return false;
    }

    public bd(ac acVar) {
        super(acVar);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0011, code lost:
        if (r1.getCount() != 0) goto L_0x0049;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.yandex.metrica.impl.bc.c H() {
        /*
            r9 = this;
            r0 = 0
            android.database.Cursor r1 = r9.I()     // Catch:{ Exception -> 0x0048, all -> 0x003f }
            if (r1 == 0) goto L_0x0013
            boolean r2 = r1.moveToFirst()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            if (r2 == 0) goto L_0x0013
            int r2 = r1.getCount()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            if (r2 != 0) goto L_0x0049
        L_0x0013:
            com.yandex.metrica.impl.ob.fo r2 = r9.m     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            long r3 = r9.D()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            com.yandex.metrica.impl.ob.en r5 = com.yandex.metrica.impl.ob.en.BACKGROUND     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            android.database.Cursor r0 = r2.a((long) r3, (com.yandex.metrica.impl.ob.en) r5)     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            if (r0 == 0) goto L_0x0049
            boolean r2 = r0.moveToFirst()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            if (r2 == 0) goto L_0x0049
            int r2 = r0.getCount()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            if (r2 <= 0) goto L_0x0049
            com.yandex.metrica.impl.ob.fo r3 = r9.m     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            long r4 = r9.D()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            com.yandex.metrica.impl.ob.en r6 = com.yandex.metrica.impl.ob.en.BACKGROUND     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            long r7 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            r3.a((long) r4, (com.yandex.metrica.impl.ob.en) r6, (long) r7)     // Catch:{ Exception -> 0x0049, all -> 0x003d }
            goto L_0x0049
        L_0x003d:
            r2 = move-exception
            goto L_0x0041
        L_0x003f:
            r2 = move-exception
            r1 = r0
        L_0x0041:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r0)
            throw r2
        L_0x0048:
            r1 = r0
        L_0x0049:
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r1)
            com.yandex.metrica.impl.bv.a((android.database.Cursor) r0)
            com.yandex.metrica.impl.bc$c r0 = super.H()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bd.H():com.yandex.metrica.impl.bc$c");
    }

    /* access modifiers changed from: protected */
    public Cursor I() {
        return this.m.a(D(), (Map<String, String>) this.f5843b);
    }

    /* access modifiers changed from: protected */
    public Cursor a(long j, en enVar) {
        return this.m.a(D(), enVar);
    }

    /* access modifiers changed from: protected */
    public bc.b a(long j, ka.c.e.b bVar) {
        return super.a(E(), bVar);
    }

    public String a() {
        return super.a() + " [" + D() + "]";
    }
}
