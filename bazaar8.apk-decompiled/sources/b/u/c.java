package b.u;

import androidx.media.AudioAttributesCompat;
import java.util.Arrays;

/* compiled from: AudioAttributesImplBase */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public int f3225a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f3226b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3227c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f3228d = -1;

    public int a() {
        return this.f3226b;
    }

    public int b() {
        int i2 = this.f3227c;
        int c2 = c();
        if (c2 == 6) {
            i2 |= 4;
        } else if (c2 == 7) {
            i2 |= 1;
        }
        return i2 & 273;
    }

    public int c() {
        int i2 = this.f3228d;
        if (i2 != -1) {
            return i2;
        }
        return AudioAttributesCompat.a(false, this.f3227c, this.f3225a);
    }

    public int d() {
        return this.f3225a;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f3226b == cVar.a() && this.f3227c == cVar.b() && this.f3225a == cVar.d() && this.f3228d == cVar.f3228d) {
            z = true;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3226b), Integer.valueOf(this.f3227c), Integer.valueOf(this.f3225a), Integer.valueOf(this.f3228d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f3228d != -1) {
            sb.append(" stream=");
            sb.append(this.f3228d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f3225a));
        sb.append(" content=");
        sb.append(this.f3226b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f3227c).toUpperCase());
        return sb.toString();
    }
}
