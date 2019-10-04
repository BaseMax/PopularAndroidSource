package org.eclipse.paho.a.a;

import org.eclipse.paho.a.a.a.l;

public class p extends Exception {
    public static final short REASON_CODE_BROKER_UNAVAILABLE = 3;
    public static final short REASON_CODE_CLIENT_ALREADY_DISCONNECTED = 32101;
    public static final short REASON_CODE_CLIENT_CLOSED = 32111;
    public static final short REASON_CODE_CLIENT_CONNECTED = 32100;
    public static final short REASON_CODE_CLIENT_DISCONNECTING = 32102;
    public static final short REASON_CODE_CLIENT_DISCONNECT_PROHIBITED = 32107;
    public static final short REASON_CODE_CLIENT_EXCEPTION = 0;
    public static final short REASON_CODE_CLIENT_NOT_CONNECTED = 32104;
    public static final short REASON_CODE_CLIENT_TIMEOUT = 32000;
    public static final short REASON_CODE_CONNECTION_LOST = 32109;
    public static final short REASON_CODE_CONNECT_IN_PROGRESS = 32110;
    public static final short REASON_CODE_DISCONNECTED_BUFFER_FULL = 32203;
    public static final short REASON_CODE_FAILED_AUTHENTICATION = 4;
    public static final short REASON_CODE_INVALID_CLIENT_ID = 2;
    public static final short REASON_CODE_INVALID_MESSAGE = 32108;
    public static final short REASON_CODE_INVALID_PROTOCOL_VERSION = 1;
    public static final short REASON_CODE_MAX_INFLIGHT = 32202;
    public static final short REASON_CODE_NOT_AUTHORIZED = 5;
    public static final short REASON_CODE_NO_MESSAGE_IDS_AVAILABLE = 32001;
    public static final short REASON_CODE_SERVER_CONNECT_ERROR = 32103;
    public static final short REASON_CODE_SOCKET_FACTORY_MISMATCH = 32105;
    public static final short REASON_CODE_SSL_CONFIG_ERROR = 32106;
    public static final short REASON_CODE_SUBSCRIBE_FAILED = 128;
    public static final short REASON_CODE_TOKEN_INUSE = 32201;
    public static final short REASON_CODE_UNEXPECTED_ERROR = 6;
    public static final short REASON_CODE_WRITE_TIMEOUT = 32002;

    /* renamed from: a  reason: collision with root package name */
    private int f8797a;

    /* renamed from: b  reason: collision with root package name */
    private Throwable f8798b;

    public p(int i) {
        this.f8797a = i;
    }

    public p(Throwable th) {
        this.f8797a = 0;
        this.f8798b = th;
    }

    public p(int i, Throwable th) {
        this.f8797a = i;
        this.f8798b = th;
    }

    public int getReasonCode() {
        return this.f8797a;
    }

    public Throwable getCause() {
        return this.f8798b;
    }

    public String getMessage() {
        return l.getMessage(this.f8797a);
    }

    public String toString() {
        String str = String.valueOf(getMessage()) + " (" + this.f8797a + ")";
        if (this.f8798b == null) {
            return str;
        }
        return String.valueOf(str) + " - " + this.f8798b.toString();
    }
}
