package com.yandex.metrica.impl;

import android.util.SparseArray;

public final class bl {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5771a = new a(bm.a());

    /* renamed from: b  reason: collision with root package name */
    static final SparseArray<a> f5772b;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f5773a;

        a(String str) {
            this.f5773a = str;
        }
    }

    static {
        SparseArray<a> sparseArray = new SparseArray<>();
        f5772b = sparseArray;
        sparseArray.put(1, new a("1.00"));
        f5772b.put(2, new a("1.10"));
        f5772b.put(3, new a("1.11"));
        f5772b.put(4, new a("1.20"));
        f5772b.put(5, new a("1.21"));
        f5772b.put(6, new a("1.22"));
        f5772b.put(7, new a("1.23"));
        f5772b.put(8, new a("1.24"));
        f5772b.put(9, new a("1.26"));
        f5772b.put(10, new a("1.27"));
        f5772b.put(11, new a("1.40"));
        f5772b.put(12, new a("1.41"));
        f5772b.put(13, new a("1.42"));
        f5772b.put(14, new a("1.50"));
        f5772b.put(15, new a("1.51"));
        f5772b.put(16, new a("1.60"));
        f5772b.put(17, new a("1.61"));
        f5772b.put(18, new a("1.62"));
        f5772b.put(19, new a("1.63"));
        f5772b.put(20, new a("1.64"));
        f5772b.put(21, new a("1.65"));
        f5772b.put(22, new a("1.66"));
        f5772b.put(23, new a("1.67"));
        f5772b.put(24, new a("1.68"));
        f5772b.put(25, new a("1.69"));
        f5772b.put(26, new a("1.70"));
        f5772b.put(27, new a("1.71"));
        f5772b.put(28, new a("1.72"));
        f5772b.put(29, new a("1.80"));
        f5772b.put(30, new a("1.81"));
        f5772b.put(31, new a("1.82"));
        f5772b.put(32, new a("2.00"));
        f5772b.put(33, new a("2.10"));
        f5772b.put(34, new a("2.11"));
        f5772b.put(35, new a("2.20"));
        f5772b.put(36, new a("2.21"));
        f5772b.put(37, new a("2.22"));
        f5772b.put(38, new a("2.23"));
        f5772b.put(39, new a("2.30"));
        f5772b.put(40, new a("2.31"));
        f5772b.put(41, new a("2.32"));
        f5772b.put(42, new a("2.33"));
        f5772b.put(43, new a("2.40"));
        f5772b.put(44, new a("2.41"));
        f5772b.put(45, new a("2.42"));
        f5772b.put(46, new a("2.43"));
        f5772b.put(47, new a("2.50"));
        f5772b.put(48, new a("2.51"));
        f5772b.put(49, new a("2.52"));
        f5772b.put(50, new a("2.60"));
        f5772b.put(51, new a("2.61"));
        f5772b.put(52, new a("2.62"));
        f5772b.put(53, new a("2.63"));
        f5772b.put(54, new a("2.64"));
        f5772b.put(55, new a("2.70"));
        f5772b.put(56, new a("2.71"));
        f5772b.put(57, new a("2.72"));
        f5772b.put(58, new a("2.73"));
        f5772b.put(59, new a("2.74"));
        f5772b.put(60, new a("2.75"));
        f5772b.put(61, new a("2.76"));
        f5772b.put(62, new a("2.77"));
        f5772b.put(63, new a("2.78"));
        f5772b.put(64, new a("2.80"));
        f5772b.put(65, new a("2.81-RC1"));
        f5772b.put(66, new a("3.0.0"));
        f5772b.put(67, new a("3.1.0"));
        f5772b.put(68, new a("3.2.0"));
        f5772b.put(69, new a("3.2.1"));
        f5772b.put(70, new a("3.2.2"));
    }

    static a a(int i) {
        return f5772b.get(i);
    }
}
