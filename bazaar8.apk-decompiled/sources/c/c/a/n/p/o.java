package c.c.a.n.p;

import android.os.Bundle;
import b.w.p;
import com.farsitel.bazaar.R;
import h.f.b.f;
import h.f.b.j;

/* compiled from: StartLoginFragmentDirections.kt */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final a f6750a = new a(null);

    /* compiled from: StartLoginFragmentDirections.kt */
    public static final class a {
        public a() {
        }

        public final p a(String str, int i2) {
            j.b(str, "dealerPackageName");
            return new b(str, i2);
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: StartLoginFragmentDirections.kt */
    private static final class b implements p {

        /* renamed from: a  reason: collision with root package name */
        public final String f6751a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6752b;

        public b(String str, int i2) {
            j.b(str, "dealerPackageName");
            this.f6751a = str;
            this.f6752b = i2;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putString("dealerPackageName", this.f6751a);
            bundle.putInt("loginType", this.f6752b);
            return bundle;
        }

        public int b() {
            return R.id.open_register_with_animation;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    if (j.a((Object) this.f6751a, (Object) bVar.f6751a)) {
                        if (this.f6752b == bVar.f6752b) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6751a;
            return ((str != null ? str.hashCode() : 0) * 31) + Integer.valueOf(this.f6752b).hashCode();
        }

        public String toString() {
            return "OpenRegisterWithAnimation(dealerPackageName=" + this.f6751a + ", loginType=" + this.f6752b + ")";
        }
    }
}
