package b.H;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;

/* compiled from: ContentUriTriggers */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Set<a> f1636a = new HashSet();

    /* compiled from: ContentUriTriggers */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f1637a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f1638b;

        public a(Uri uri, boolean z) {
            this.f1637a = uri;
            this.f1638b = z;
        }

        public Uri a() {
            return this.f1637a;
        }

        public boolean b() {
            return this.f1638b;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f1638b != aVar.f1638b || !this.f1637a.equals(aVar.f1637a)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f1637a.hashCode() * 31) + (this.f1638b ? 1 : 0);
        }
    }

    public void a(Uri uri, boolean z) {
        this.f1636a.add(new a(uri, z));
    }

    public int b() {
        return this.f1636a.size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f1636a.equals(((c) obj).f1636a);
    }

    public int hashCode() {
        return this.f1636a.hashCode();
    }

    public Set<a> a() {
        return this.f1636a;
    }
}
