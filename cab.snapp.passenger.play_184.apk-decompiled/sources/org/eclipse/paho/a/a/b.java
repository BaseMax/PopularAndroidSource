package org.eclipse.paho.a.a;

public final class b {
    public static final boolean DELETE_OLDEST_MESSAGES_DEFAULT = false;
    public static final boolean DISCONNECTED_BUFFER_ENABLED_DEFAULT = false;
    public static final int DISCONNECTED_BUFFER_SIZE_DEFAULT = 5000;
    public static final boolean PERSIST_DISCONNECTED_BUFFER_DEFAULT = false;

    /* renamed from: a  reason: collision with root package name */
    private int f8773a = DISCONNECTED_BUFFER_SIZE_DEFAULT;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8774b = false;
    private boolean c = false;
    private boolean d = false;

    public final int getBufferSize() {
        return this.f8773a;
    }

    public final void setBufferSize(int i) {
        if (i > 0) {
            this.f8773a = i;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final boolean isBufferEnabled() {
        return this.f8774b;
    }

    public final void setBufferEnabled(boolean z) {
        this.f8774b = z;
    }

    public final boolean isPersistBuffer() {
        return this.c;
    }

    public final void setPersistBuffer(boolean z) {
        this.c = z;
    }

    public final boolean isDeleteOldestMessages() {
        return this.d;
    }

    public final void setDeleteOldestMessages(boolean z) {
        this.d = z;
    }
}
