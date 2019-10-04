package c.e.a.a.b;

import android.annotation.TargetApi;
import android.media.AudioAttributes;

/* compiled from: AudioAttributes */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f7454a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public final int f7455b;

    /* renamed from: c  reason: collision with root package name */
    public final int f7456c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7457d;

    /* renamed from: e  reason: collision with root package name */
    public AudioAttributes f7458e;

    /* compiled from: AudioAttributes */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f7459a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f7460b = 0;

        /* renamed from: c  reason: collision with root package name */
        public int f7461c = 1;

        public l a() {
            return new l(this.f7459a, this.f7460b, this.f7461c);
        }
    }

    @TargetApi(21)
    public AudioAttributes a() {
        if (this.f7458e == null) {
            this.f7458e = new AudioAttributes.Builder().setContentType(this.f7455b).setFlags(this.f7456c).setUsage(this.f7457d).build();
        }
        return this.f7458e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (!(this.f7455b == lVar.f7455b && this.f7456c == lVar.f7456c && this.f7457d == lVar.f7457d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f7455b) * 31) + this.f7456c) * 31) + this.f7457d;
    }

    public l(int i2, int i3, int i4) {
        this.f7455b = i2;
        this.f7456c = i3;
        this.f7457d = i4;
    }
}
