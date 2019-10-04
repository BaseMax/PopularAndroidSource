package b.u;

import android.text.TextUtils;
import b.i.j.c;

/* compiled from: MediaSessionManagerImplBase */
public class h implements f {

    /* renamed from: a  reason: collision with root package name */
    public String f3231a;

    /* renamed from: b  reason: collision with root package name */
    public int f3232b;

    /* renamed from: c  reason: collision with root package name */
    public int f3233c;

    public h(String str, int i2, int i3) {
        this.f3231a = str;
        this.f3232b = i2;
        this.f3233c = i3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!(TextUtils.equals(this.f3231a, hVar.f3231a) && this.f3232b == hVar.f3232b && this.f3233c == hVar.f3233c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return c.a(this.f3231a, Integer.valueOf(this.f3232b), Integer.valueOf(this.f3233c));
    }
}
