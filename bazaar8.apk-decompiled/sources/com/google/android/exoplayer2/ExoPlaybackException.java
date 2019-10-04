package com.google.android.exoplayer2;

import c.e.a.a.o.C0737e;
import java.io.IOException;

public final class ExoPlaybackException extends Exception {
    public final Throwable cause;
    public final int rendererIndex;
    public final int type;

    public ExoPlaybackException(int i2, Throwable th, int i3) {
        super(th);
        this.type = i2;
        this.cause = th;
        this.rendererIndex = i3;
    }

    public static ExoPlaybackException a(IOException iOException) {
        return new ExoPlaybackException(0, iOException, -1);
    }

    public IOException b() {
        C0737e.b(this.type == 0);
        Throwable th = this.cause;
        C0737e.a(th);
        return (IOException) th;
    }

    public RuntimeException c() {
        C0737e.b(this.type == 2);
        Throwable th = this.cause;
        C0737e.a(th);
        return (RuntimeException) th;
    }

    public static ExoPlaybackException a(Exception exc, int i2) {
        return new ExoPlaybackException(1, exc, i2);
    }

    public static ExoPlaybackException a(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException, -1);
    }

    public static ExoPlaybackException a(OutOfMemoryError outOfMemoryError) {
        return new ExoPlaybackException(4, outOfMemoryError, -1);
    }

    public Exception a() {
        boolean z = true;
        if (this.type != 1) {
            z = false;
        }
        C0737e.b(z);
        Throwable th = this.cause;
        C0737e.a(th);
        return (Exception) th;
    }
}
