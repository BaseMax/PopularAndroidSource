package com.google.android.exoplayer2;

import c.e.a.a.Z;

public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final Z timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(Z z, int i2, long j2) {
        this.timeline = z;
        this.windowIndex = i2;
        this.positionMs = j2;
    }
}
