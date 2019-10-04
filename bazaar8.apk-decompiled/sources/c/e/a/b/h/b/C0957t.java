package c.e.a.b.h.b;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import c.e.a.b.d.d.r;

/* renamed from: c.e.a.b.h.b.t  reason: case insensitive filesystem */
public final class C0957t extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public char f11045c = 0;

    /* renamed from: d  reason: collision with root package name */
    public long f11046d = -1;

    /* renamed from: e  reason: collision with root package name */
    public String f11047e;

    /* renamed from: f  reason: collision with root package name */
    public final C0963v f11048f = new C0963v(this, 6, false, false);

    /* renamed from: g  reason: collision with root package name */
    public final C0963v f11049g = new C0963v(this, 6, true, false);

    /* renamed from: h  reason: collision with root package name */
    public final C0963v f11050h = new C0963v(this, 6, false, true);

    /* renamed from: i  reason: collision with root package name */
    public final C0963v f11051i = new C0963v(this, 5, false, false);

    /* renamed from: j  reason: collision with root package name */
    public final C0963v f11052j = new C0963v(this, 5, true, false);

    /* renamed from: k  reason: collision with root package name */
    public final C0963v f11053k = new C0963v(this, 5, false, true);

    /* renamed from: l  reason: collision with root package name */
    public final C0963v f11054l = new C0963v(this, 4, false, false);
    public final C0963v m = new C0963v(this, 3, false, false);
    public final C0963v n = new C0963v(this, 2, false, false);

    public C0957t(Y y) {
        super(y);
    }

    public static Object a(String str) {
        if (str == null) {
            return null;
        }
        return new C0966w(str);
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }

    public final C0963v A() {
        return this.m;
    }

    public final C0963v B() {
        return this.n;
    }

    public final String C() {
        String str;
        synchronized (this) {
            if (this.f11047e == null) {
                if (this.f11077a.s() != null) {
                    this.f11047e = this.f11077a.s();
                } else {
                    this.f11047e = pc.o();
                }
            }
            str = this.f11047e;
        }
        return str;
    }

    public final String D() {
        Pair<String, Long> b2 = h().f10612e.b();
        if (b2 == null || b2 == F.f10610c) {
            return null;
        }
        String valueOf = String.valueOf(b2.second);
        String str = (String) b2.first;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
        sb.append(valueOf);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    public final boolean r() {
        return false;
    }

    public final C0963v t() {
        return this.f11048f;
    }

    public final C0963v u() {
        return this.f11049g;
    }

    public final C0963v v() {
        return this.f11050h;
    }

    public final C0963v w() {
        return this.f11051i;
    }

    public final C0963v x() {
        return this.f11052j;
    }

    public final C0963v y() {
        return this.f11053k;
    }

    public final C0963v z() {
        return this.f11054l;
    }

    public final void a(int i2, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && a(i2)) {
            a(i2, a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i2 >= 5) {
            r.a(str);
            U o = this.f11077a.o();
            if (o == null) {
                a(6, "Scheduler not set. Not logging error/warn");
            } else if (!o.n()) {
                a(6, "Scheduler not initialized. Not logging error/warn");
            } else {
                if (i2 < 0) {
                    i2 = 0;
                }
                C0960u uVar = new C0960u(this, i2 >= 9 ? 8 : i2, str, obj, obj2, obj3);
                o.a((Runnable) uVar);
            }
        }
    }

    public final boolean a(int i2) {
        return Log.isLoggable(C(), i2);
    }

    public final void a(int i2, String str) {
        Log.println(i2, C(), str);
    }

    public static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        String a2 = a(z, obj);
        String a3 = a(z, obj2);
        String a4 = a(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(a2)) {
            sb.append(str2);
            sb.append(a2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            sb.append(str2);
            sb.append(a3);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a4)) {
            sb.append(str2);
            sb.append(a4);
        }
        return sb.toString();
    }

    public static String a(boolean z, Object obj) {
        String str = "";
        if (obj == null) {
            return str;
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf((long) ((Integer) obj).intValue());
        }
        int i2 = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l2 = (Long) obj;
            if (Math.abs(l2.longValue()) < 100) {
                return String.valueOf(obj);
            }
            if (String.valueOf(obj).charAt(0) == '-') {
                str = "-";
            }
            String valueOf = String.valueOf(Math.abs(l2.longValue()));
            long round = Math.round(Math.pow(10.0d, (double) (valueOf.length() - 1)));
            long round2 = Math.round(Math.pow(10.0d, (double) valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str.length() + 43 + str.length());
            sb.append(str);
            sb.append(round);
            sb.append("...");
            sb.append(str);
            sb.append(round2);
            return sb.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (obj instanceof Throwable) {
                Throwable th = (Throwable) obj;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String b2 = b(Y.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    if (!stackTraceElement.isNativeMethod()) {
                        String className = stackTraceElement.getClassName();
                        if (className != null && b(className).equals(b2)) {
                            sb2.append(": ");
                            sb2.append(stackTraceElement);
                            break;
                        }
                    }
                    i2++;
                }
                return sb2.toString();
            } else if (obj instanceof C0966w) {
                return ((C0966w) obj).f11096a;
            } else {
                if (z) {
                    return "-";
                }
                return String.valueOf(obj);
            }
        }
    }
}
