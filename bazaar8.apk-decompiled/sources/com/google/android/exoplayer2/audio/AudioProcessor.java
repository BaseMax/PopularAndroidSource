package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f12518a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class UnhandledFormatException extends Exception {
        public UnhandledFormatException(int i2, int i3, int i4) {
            super("Unhandled format: " + i2 + " Hz, " + i3 + " channels in encoding " + i4);
        }
    }

    void a(ByteBuffer byteBuffer);

    boolean a(int i2, int i3, int i4);

    boolean d();

    void flush();

    void reset();

    boolean s();

    ByteBuffer t();

    int u();

    int v();

    int w();

    void x();
}
