package com.pusher.client.connection;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final ConnectionState f5055a;

    /* renamed from: b  reason: collision with root package name */
    private final ConnectionState f5056b;

    public c(ConnectionState connectionState, ConnectionState connectionState2) {
        if (connectionState != connectionState2) {
            this.f5055a = connectionState;
            this.f5056b = connectionState2;
            return;
        }
        throw new IllegalArgumentException("Attempted to create an connection state update where both previous and current state are: ".concat(String.valueOf(connectionState2)));
    }

    public final ConnectionState getPreviousState() {
        return this.f5055a;
    }

    public final ConnectionState getCurrentState() {
        return this.f5056b;
    }

    public final int hashCode() {
        return this.f5055a.hashCode() + this.f5056b.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof c)) {
            c cVar = (c) obj;
            if (this.f5056b == cVar.f5056b && this.f5055a == cVar.f5055a) {
                return true;
            }
        }
        return false;
    }
}
