package com.yandex.metrica.impl.ob;

import android.util.SparseArray;

public class jx {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<String> f6184a;

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        f6184a = sparseArray;
        sparseArray.put(0, "String");
        f6184a.put(1, "Number");
        f6184a.put(2, "Counter");
    }

    static String a(int i) {
        return f6184a.get(i);
    }
}
