package com.yandex.metrica.impl;

import android.content.Context;
import android.util.SparseArray;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.ob.ja;

public abstract class am {

    interface a {
        void a(Context context);
    }

    /* access modifiers changed from: protected */
    public abstract int a(ja jaVar);

    /* access modifiers changed from: package-private */
    public abstract SparseArray<a> a();

    /* access modifiers changed from: protected */
    public abstract void a(ja jaVar, int i);

    public void a(Context context) {
        ja jaVar = new ja(context);
        int a2 = a(jaVar);
        int b2 = b();
        if (a2 < b2) {
            SparseArray<a> a3 = a();
            while (true) {
                a2++;
                if (a2 <= b2) {
                    a aVar = a3.get(a2);
                    if (aVar != null) {
                        aVar.a(context);
                    }
                } else {
                    a(jaVar, b2);
                    jaVar.j();
                    return;
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public int b() {
        return YandexMetrica.getLibraryApiLevel();
    }
}
