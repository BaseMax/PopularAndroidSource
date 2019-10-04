package c.e.a.a.b;

import android.content.Context;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;

/* compiled from: AudioFocusManager */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final AudioManager f7466a;

    /* renamed from: b  reason: collision with root package name */
    public final a f7467b;

    /* renamed from: c  reason: collision with root package name */
    public final b f7468c;

    /* renamed from: d  reason: collision with root package name */
    public l f7469d;

    /* renamed from: e  reason: collision with root package name */
    public int f7470e;

    /* renamed from: f  reason: collision with root package name */
    public int f7471f;

    /* renamed from: g  reason: collision with root package name */
    public float f7472g = 1.0f;

    /* renamed from: h  reason: collision with root package name */
    public AudioFocusRequest f7473h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f7474i;

    /* compiled from: AudioFocusManager */
    private class a implements AudioManager.OnAudioFocusChangeListener {
        public a() {
        }

        public void onAudioFocusChange(int i2) {
            if (i2 != -3) {
                if (i2 == -2) {
                    int unused = o.this.f7470e = 2;
                } else if (i2 == -1) {
                    int unused2 = o.this.f7470e = -1;
                } else if (i2 != 1) {
                    p.d("AudioFocusManager", "Unknown focus change type: " + i2);
                    return;
                } else {
                    int unused3 = o.this.f7470e = 1;
                }
            } else if (o.this.i()) {
                int unused4 = o.this.f7470e = 2;
            } else {
                int unused5 = o.this.f7470e = 3;
            }
            int a2 = o.this.f7470e;
            if (a2 == -1) {
                o.this.f7468c.d(-1);
                o.this.a(true);
            } else if (a2 != 0) {
                if (a2 == 1) {
                    o.this.f7468c.d(1);
                } else if (a2 == 2) {
                    o.this.f7468c.d(0);
                } else if (a2 != 3) {
                    throw new IllegalStateException("Unknown audio focus state: " + o.this.f7470e);
                }
            }
            float f2 = o.this.f7470e == 3 ? 0.2f : 1.0f;
            if (o.this.f7472g != f2) {
                float unused6 = o.this.f7472g = f2;
                o.this.f7468c.a(f2);
            }
        }
    }

    /* compiled from: AudioFocusManager */
    public interface b {
        void a(float f2);

        void d(int i2);
    }

    public o(Context context, b bVar) {
        this.f7466a = (AudioManager) context.getApplicationContext().getSystemService("audio");
        this.f7468c = bVar;
        this.f7467b = new a();
        this.f7470e = 0;
    }

    public final int b(boolean z) {
        return z ? 1 : -1;
    }

    public void e() {
        a(true);
    }

    public final int f() {
        int i2;
        int i3 = 1;
        if (this.f7471f == 0) {
            if (this.f7470e != 0) {
                a(true);
            }
            return 1;
        }
        if (this.f7470e == 0) {
            if (I.f9565a >= 26) {
                i2 = h();
            } else {
                i2 = g();
            }
            this.f7470e = i2 == 1 ? 1 : 0;
        }
        int i4 = this.f7470e;
        if (i4 == 0) {
            return -1;
        }
        if (i4 == 2) {
            i3 = 0;
        }
        return i3;
    }

    public final int g() {
        AudioManager audioManager = this.f7466a;
        a aVar = this.f7467b;
        l lVar = this.f7469d;
        C0737e.a(lVar);
        return audioManager.requestAudioFocus(aVar, I.d(lVar.f7457d), this.f7471f);
    }

    public final int h() {
        if (this.f7473h == null || this.f7474i) {
            AudioFocusRequest audioFocusRequest = this.f7473h;
            AudioFocusRequest.Builder builder = audioFocusRequest == null ? new AudioFocusRequest.Builder(this.f7471f) : new AudioFocusRequest.Builder(audioFocusRequest);
            boolean i2 = i();
            l lVar = this.f7469d;
            C0737e.a(lVar);
            this.f7473h = builder.setAudioAttributes(lVar.a()).setWillPauseWhenDucked(i2).setOnAudioFocusChangeListener(this.f7467b).build();
            this.f7474i = false;
        }
        return this.f7466a.requestAudioFocus(this.f7473h);
    }

    public final boolean i() {
        l lVar = this.f7469d;
        return lVar != null && lVar.f7455b == 1;
    }

    public final void b() {
        this.f7466a.abandonAudioFocus(this.f7467b);
    }

    public int c(boolean z) {
        if (z) {
            return f();
        }
        return -1;
    }

    public float d() {
        return this.f7472g;
    }

    public final void c() {
        AudioFocusRequest audioFocusRequest = this.f7473h;
        if (audioFocusRequest != null) {
            this.f7466a.abandonAudioFocusRequest(audioFocusRequest);
        }
    }

    public int a(boolean z, int i2) {
        if (!z) {
            a();
            return -1;
        }
        return i2 == 1 ? b(z) : f();
    }

    public final void a() {
        a(false);
    }

    public final void a(boolean z) {
        if (this.f7471f != 0 || this.f7470e != 0) {
            if (this.f7471f != 1 || this.f7470e == -1 || z) {
                if (I.f9565a >= 26) {
                    c();
                } else {
                    b();
                }
                this.f7470e = 0;
            }
        }
    }
}
