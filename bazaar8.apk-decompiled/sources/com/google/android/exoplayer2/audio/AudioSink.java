package com.google.android.exoplayer2.audio;

import c.e.a.a.K;
import c.e.a.a.b.l;
import c.e.a.a.b.t;
import java.nio.ByteBuffer;

public interface AudioSink {

    public static final class ConfigurationException extends Exception {
        public ConfigurationException(Throwable th) {
            super(th);
        }

        public ConfigurationException(String str) {
            super(str);
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        public InitializationException(int i2, int i3, int i4, int i5) {
            super("AudioTrack init failed: " + i2 + ", Config(" + i3 + ", " + i4 + ", " + i5 + ")");
            this.audioTrackState = i2;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;

        public WriteException(int i2) {
            super("AudioTrack write failed: " + i2);
            this.errorCode = i2;
        }
    }

    public interface a {
        void a();

        void a(int i2, long j2, long j3);

        void c(int i2);
    }

    long a(boolean z);

    K a();

    K a(K k2);

    void a(float f2);

    void a(int i2);

    void a(int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7);

    void a(l lVar);

    void a(t tVar);

    void a(a aVar);

    boolean a(int i2, int i3);

    boolean a(ByteBuffer byteBuffer, long j2);

    void b();

    boolean c();

    boolean d();

    void e();

    void f();

    void flush();

    void g();

    void pause();

    void reset();
}
