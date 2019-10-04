package io.fabric.sdk.android.services.settings;

public final class b {
    public static final int DEFAULT_SAMPLING_RATE = 1;
    public final String analyticsURL;
    public final int flushIntervalSeconds;
    public final boolean flushOnBackground;
    public final int maxByteSizePerFile;
    public final int maxFileCountPerSend;
    public final int maxPendingSendFileCount;
    public final int samplingRate;
    public final boolean trackCustomEvents;
    public final boolean trackPredefinedEvents;

    public b(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, int i5, boolean z3) {
        this.analyticsURL = str;
        this.flushIntervalSeconds = i;
        this.maxByteSizePerFile = i2;
        this.maxFileCountPerSend = i3;
        this.maxPendingSendFileCount = i4;
        this.trackCustomEvents = z;
        this.trackPredefinedEvents = z2;
        this.samplingRate = i5;
        this.flushOnBackground = z3;
    }

    @Deprecated
    public b(String str, int i, int i2, int i3, int i4, boolean z, int i5) {
        this(str, i, i2, i3, i4, z, true, i5, true);
    }

    @Deprecated
    public b(String str, int i, int i2, int i3, int i4, boolean z) {
        this(str, i, i2, i3, i4, z, true, 1, true);
    }
}
