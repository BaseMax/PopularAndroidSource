package io.fabric.sdk.android.services.b;

import android.content.Context;

public final class i implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f6573a;

    /* renamed from: b  reason: collision with root package name */
    private final e f6574b;

    public i(Context context, e eVar) {
        this.f6573a = context;
        this.f6574b = eVar;
    }

    public final void run() {
        try {
            io.fabric.sdk.android.services.common.i.logControlled(this.f6573a, "Performing time based file roll over.");
            if (!this.f6574b.rollFileOver()) {
                this.f6574b.cancelTimeBasedFileRollOver();
            }
        } catch (Exception e) {
            io.fabric.sdk.android.services.common.i.logControlledError(this.f6573a, "Failed to roll over file", e);
        }
    }
}
