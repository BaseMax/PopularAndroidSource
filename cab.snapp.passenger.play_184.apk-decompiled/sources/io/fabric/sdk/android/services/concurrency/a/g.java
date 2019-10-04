package io.fabric.sdk.android.services.concurrency.a;

public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final int f6638a;

    /* renamed from: b  reason: collision with root package name */
    private final b f6639b;
    private final f c;

    public g(b bVar, f fVar) {
        this(0, bVar, fVar);
    }

    public g(int i, b bVar, f fVar) {
        this.f6638a = i;
        this.f6639b = bVar;
        this.c = fVar;
    }

    public final int getRetryCount() {
        return this.f6638a;
    }

    public final long getRetryDelay() {
        return this.f6639b.getDelayMillis(this.f6638a);
    }

    public final b getBackoff() {
        return this.f6639b;
    }

    public final f getRetryPolicy() {
        return this.c;
    }

    public final g nextRetryState() {
        return new g(this.f6638a + 1, this.f6639b, this.c);
    }

    public final g initialRetryState() {
        return new g(this.f6639b, this.c);
    }
}
