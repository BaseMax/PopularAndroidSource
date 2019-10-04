package com.a.a.a;

import io.fabric.sdk.android.services.concurrency.a.b;
import java.util.Random;

final class x implements b {

    /* renamed from: a  reason: collision with root package name */
    final b f1697a;

    /* renamed from: b  reason: collision with root package name */
    final Random f1698b;
    final double c;

    public x(b bVar, double d) {
        this(bVar, d, new Random());
    }

    public x(b bVar, double d, Random random) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        } else if (bVar == null) {
            throw new NullPointerException("backoff must not be null");
        } else if (random != null) {
            this.f1697a = bVar;
            this.c = d;
            this.f1698b = random;
        } else {
            throw new NullPointerException("random must not be null");
        }
    }

    public final long getDelayMillis(int i) {
        double d = this.c;
        double d2 = 1.0d - d;
        double nextDouble = d2 + (((d + 1.0d) - d2) * this.f1698b.nextDouble());
        double delayMillis = (double) this.f1697a.getDelayMillis(i);
        Double.isNaN(delayMillis);
        return (long) (nextDouble * delayMillis);
    }
}
