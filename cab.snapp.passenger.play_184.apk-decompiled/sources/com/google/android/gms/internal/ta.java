package com.google.android.gms.internal;

import java.io.IOException;

public final class ta {
    public static final String[] EMPTY_STRING_ARRAY = new String[0];

    /* renamed from: a  reason: collision with root package name */
    private static int f3532a = 11;

    /* renamed from: b  reason: collision with root package name */
    private static int f3533b = 12;
    private static int c = 16;
    private static int d = 26;
    public static final int[] zzpnp = new int[0];
    public static final long[] zzpnq = new long[0];
    public static final float[] zzpnr = new float[0];
    public static final double[] zzpns = new double[0];
    public static final boolean[] zzpnt = new boolean[0];
    public static final byte[][] zzpnu = new byte[0][];
    public static final byte[] zzpnv = new byte[0];

    public static final int zzb(so soVar, int i) throws IOException {
        int position = soVar.getPosition();
        soVar.zzkq(i);
        int i2 = 1;
        while (soVar.zzcvt() == i) {
            soVar.zzkq(i);
            i2++;
        }
        soVar.a(position, i);
        return i2;
    }
}
