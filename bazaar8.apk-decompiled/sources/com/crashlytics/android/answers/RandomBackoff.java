package com.crashlytics.android.answers;

import e.a.a.a.a.c.a.a;
import java.util.Random;

public class RandomBackoff implements a {
    public final a backoff;
    public final double jitterPercent;
    public final Random random;

    public RandomBackoff(a aVar, double d2) {
        this(aVar, d2, new Random());
    }

    public long getDelayMillis(int i2) {
        double randomJitter = randomJitter();
        double delayMillis = (double) this.backoff.getDelayMillis(i2);
        Double.isNaN(delayMillis);
        return (long) (randomJitter * delayMillis);
    }

    public double randomJitter() {
        double d2 = this.jitterPercent;
        double d3 = 1.0d - d2;
        return d3 + (((d2 + 1.0d) - d3) * this.random.nextDouble());
    }

    public RandomBackoff(a aVar, double d2, Random random2) {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        } else if (aVar == null) {
            throw new NullPointerException("backoff must not be null");
        } else if (random2 != null) {
            this.backoff = aVar;
            this.jitterPercent = d2;
            this.random = random2;
        } else {
            throw new NullPointerException("random must not be null");
        }
    }
}
