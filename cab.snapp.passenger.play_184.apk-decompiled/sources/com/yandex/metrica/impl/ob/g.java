package com.yandex.metrica.impl.ob;

import java.io.IOException;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f6048a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f6049b = new String[0];
    public static final byte[] c = new byte[0];

    static int a(int i) {
        return i & 7;
    }

    static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int b(int i) {
        return i >>> 3;
    }

    public static boolean a(a aVar, int i) throws IOException {
        return aVar.b(i);
    }

    public static final int b(a aVar, int i) throws IOException {
        int s = aVar.s();
        aVar.b(i);
        int i2 = 1;
        while (aVar.a() == i) {
            aVar.b(i);
            i2++;
        }
        aVar.e(s);
        return i2;
    }
}
