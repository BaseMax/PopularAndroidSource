package c.e.a.b.d.d;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;

/* renamed from: c.e.a.b.d.d.j  reason: case insensitive filesystem */
public abstract class C0787j {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f10018a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static C0787j f10019b;

    /* renamed from: c.e.a.b.d.d.j$a */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f10020a;

        /* renamed from: b  reason: collision with root package name */
        public final String f10021b;

        /* renamed from: c  reason: collision with root package name */
        public final ComponentName f10022c = null;

        /* renamed from: d  reason: collision with root package name */
        public final int f10023d;

        public a(String str, String str2, int i2) {
            r.b(str);
            this.f10020a = str;
            r.b(str2);
            this.f10021b = str2;
            this.f10023d = i2;
        }

        public final ComponentName a() {
            return this.f10022c;
        }

        public final String b() {
            return this.f10021b;
        }

        public final int c() {
            return this.f10023d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return C0794q.a(this.f10020a, aVar.f10020a) && C0794q.a(this.f10021b, aVar.f10021b) && C0794q.a(this.f10022c, aVar.f10022c) && this.f10023d == aVar.f10023d;
        }

        public final int hashCode() {
            return C0794q.a(this.f10020a, this.f10021b, this.f10022c, Integer.valueOf(this.f10023d));
        }

        public final String toString() {
            String str = this.f10020a;
            return str == null ? this.f10022c.flattenToString() : str;
        }

        public final Intent a(Context context) {
            String str = this.f10020a;
            if (str != null) {
                return new Intent(str).setPackage(this.f10021b);
            }
            return new Intent().setComponent(this.f10022c);
        }
    }

    public static C0787j a(Context context) {
        synchronized (f10018a) {
            if (f10019b == null) {
                f10019b = new H(context.getApplicationContext());
            }
        }
        return f10019b;
    }

    public abstract boolean a(a aVar, ServiceConnection serviceConnection, String str);

    public abstract void b(a aVar, ServiceConnection serviceConnection, String str);

    public final void a(String str, String str2, int i2, ServiceConnection serviceConnection, String str3) {
        b(new a(str, str2, i2), serviceConnection, str3);
    }
}
