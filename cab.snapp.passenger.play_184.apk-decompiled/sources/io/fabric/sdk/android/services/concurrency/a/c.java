package io.fabric.sdk.android.services.concurrency.a;

public final class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private final int f6634a;

    public c() {
        this(1);
    }

    public c(int i) {
        this.f6634a = i;
    }

    public final boolean shouldRetry(int i, Throwable th) {
        return i < this.f6634a;
    }
}
