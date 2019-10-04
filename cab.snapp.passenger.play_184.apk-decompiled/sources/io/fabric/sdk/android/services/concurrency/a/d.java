package io.fabric.sdk.android.services.concurrency.a;

public final class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private final long f6635a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6636b;

    public d(long j) {
        this(j, 2);
    }

    public d(long j, int i) {
        this.f6635a = j;
        this.f6636b = i;
    }

    public final long getDelayMillis(int i) {
        double d = (double) this.f6635a;
        double pow = Math.pow((double) this.f6636b, (double) i);
        Double.isNaN(d);
        return (long) (d * pow);
    }
}
