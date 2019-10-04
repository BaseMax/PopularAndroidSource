package com.google.zxing.common;

public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static h f4319a = new e();

    public abstract b sampleGrid(b bVar, int i, int i2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) throws com.google.zxing.h;

    public abstract b sampleGrid(b bVar, int i, int i2, j jVar) throws com.google.zxing.h;

    public static void setGridSampler(h hVar) {
        f4319a = hVar;
    }

    public static h getInstance() {
        return f4319a;
    }
}
