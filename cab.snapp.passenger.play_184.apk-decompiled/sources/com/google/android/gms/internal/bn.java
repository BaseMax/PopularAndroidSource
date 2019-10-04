package com.google.android.gms.internal;

import com.google.android.gms.common.util.d;

public final class bn {

    /* renamed from: a  reason: collision with root package name */
    private final long f3092a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3093b;
    private double c;
    private long d;
    private final Object e;
    private final String f;
    private final d g;

    public bn(String str, d dVar) {
        this(str, dVar, (byte) 0);
    }

    private bn(String str, d dVar, byte b2) {
        this.e = new Object();
        this.f3093b = 60;
        this.c = (double) this.f3093b;
        this.f3092a = 2000;
        this.f = str;
        this.g = dVar;
    }

    public final boolean zzzn() {
        synchronized (this.e) {
            long currentTimeMillis = this.g.currentTimeMillis();
            if (this.c < ((double) this.f3093b)) {
                double d2 = (double) (currentTimeMillis - this.d);
                double d3 = (double) this.f3092a;
                Double.isNaN(d2);
                Double.isNaN(d3);
                double d4 = d2 / d3;
                if (d4 > 0.0d) {
                    this.c = Math.min((double) this.f3093b, this.c + d4);
                }
            }
            this.d = currentTimeMillis;
            if (this.c >= 1.0d) {
                this.c -= 1.0d;
                return true;
            }
            String str = this.f;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
            sb.append("Excessive ");
            sb.append(str);
            sb.append(" detected; call ignored.");
            bo.zzcu(sb.toString());
            return false;
        }
    }
}
