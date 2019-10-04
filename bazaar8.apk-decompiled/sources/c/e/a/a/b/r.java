package c.e.a.a.b;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import c.e.a.a.o.I;

/* compiled from: AudioTimestampPoller */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final a f7478a;

    /* renamed from: b  reason: collision with root package name */
    public int f7479b;

    /* renamed from: c  reason: collision with root package name */
    public long f7480c;

    /* renamed from: d  reason: collision with root package name */
    public long f7481d;

    /* renamed from: e  reason: collision with root package name */
    public long f7482e;

    /* renamed from: f  reason: collision with root package name */
    public long f7483f;

    @TargetApi(19)
    /* compiled from: AudioTimestampPoller */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final AudioTrack f7484a;

        /* renamed from: b  reason: collision with root package name */
        public final AudioTimestamp f7485b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        public long f7486c;

        /* renamed from: d  reason: collision with root package name */
        public long f7487d;

        /* renamed from: e  reason: collision with root package name */
        public long f7488e;

        public a(AudioTrack audioTrack) {
            this.f7484a = audioTrack;
        }

        public long a() {
            return this.f7488e;
        }

        public long b() {
            return this.f7485b.nanoTime / 1000;
        }

        public boolean c() {
            boolean timestamp = this.f7484a.getTimestamp(this.f7485b);
            if (timestamp) {
                long j2 = this.f7485b.framePosition;
                if (this.f7487d > j2) {
                    this.f7486c++;
                }
                this.f7487d = j2;
                this.f7488e = j2 + (this.f7486c << 32);
            }
            return timestamp;
        }
    }

    public r(AudioTrack audioTrack) {
        if (I.f9565a >= 19) {
            this.f7478a = new a(audioTrack);
            g();
            return;
        }
        this.f7478a = null;
        a(3);
    }

    public boolean a(long j2) {
        a aVar = this.f7478a;
        if (aVar == null || j2 - this.f7482e < this.f7481d) {
            return false;
        }
        this.f7482e = j2;
        boolean c2 = aVar.c();
        int i2 = this.f7479b;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            throw new IllegalStateException();
                        }
                    } else if (c2) {
                        g();
                    }
                } else if (!c2) {
                    g();
                }
            } else if (!c2) {
                g();
            } else if (this.f7478a.a() > this.f7483f) {
                a(2);
            }
        } else if (c2) {
            if (this.f7478a.b() >= this.f7480c) {
                this.f7483f = this.f7478a.a();
                a(1);
            } else {
                c2 = false;
            }
        } else if (j2 - this.f7480c > 500000) {
            a(3);
        }
        return c2;
    }

    public long b() {
        a aVar = this.f7478a;
        if (aVar != null) {
            return aVar.a();
        }
        return -1;
    }

    public long c() {
        a aVar = this.f7478a;
        if (aVar != null) {
            return aVar.b();
        }
        return -9223372036854775807L;
    }

    public boolean d() {
        int i2 = this.f7479b;
        return i2 == 1 || i2 == 2;
    }

    public boolean e() {
        return this.f7479b == 2;
    }

    public void f() {
        a(4);
    }

    public void g() {
        if (this.f7478a != null) {
            a(0);
        }
    }

    public void a() {
        if (this.f7479b == 4) {
            g();
        }
    }

    public final void a(int i2) {
        this.f7479b = i2;
        if (i2 == 0) {
            this.f7482e = 0;
            this.f7483f = -1;
            this.f7480c = System.nanoTime() / 1000;
            this.f7481d = 5000;
        } else if (i2 == 1) {
            this.f7481d = 5000;
        } else if (i2 == 2 || i2 == 3) {
            this.f7481d = 10000000;
        } else if (i2 == 4) {
            this.f7481d = 500000;
        } else {
            throw new IllegalStateException();
        }
    }
}
