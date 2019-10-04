package c.e.a.b.d.c;

import android.net.Uri;
import c.e.a.b.d.d.C0794q;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f9942a;

    public b(Uri uri) {
        this.f9942a = uri;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return C0794q.a(((b) obj).f9942a, this.f9942a);
    }

    public final int hashCode() {
        return C0794q.a(this.f9942a);
    }
}
