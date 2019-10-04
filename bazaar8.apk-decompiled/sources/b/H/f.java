package b.H;

import android.util.Log;

/* compiled from: Logger */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    public static f f1644a = null;

    /* renamed from: b  reason: collision with root package name */
    public static final int f1645b = 20;

    /* compiled from: Logger */
    public static class a extends f {

        /* renamed from: c  reason: collision with root package name */
        public int f1646c;

        public a(int i2) {
            super(i2);
            this.f1646c = i2;
        }

        public void a(String str, String str2, Throwable... thArr) {
            if (this.f1646c > 3) {
                return;
            }
            if (thArr == null || thArr.length < 1) {
                Log.d(str, str2);
            } else {
                Log.d(str, str2, thArr[0]);
            }
        }

        public void b(String str, String str2, Throwable... thArr) {
            if (this.f1646c > 6) {
                return;
            }
            if (thArr == null || thArr.length < 1) {
                Log.e(str, str2);
            } else {
                Log.e(str, str2, thArr[0]);
            }
        }

        public void c(String str, String str2, Throwable... thArr) {
            if (this.f1646c > 4) {
                return;
            }
            if (thArr == null || thArr.length < 1) {
                Log.i(str, str2);
            } else {
                Log.i(str, str2, thArr[0]);
            }
        }

        public void d(String str, String str2, Throwable... thArr) {
            if (this.f1646c > 2) {
                return;
            }
            if (thArr == null || thArr.length < 1) {
                Log.v(str, str2);
            } else {
                Log.v(str, str2, thArr[0]);
            }
        }

        public void e(String str, String str2, Throwable... thArr) {
            if (this.f1646c > 5) {
                return;
            }
            if (thArr == null || thArr.length < 1) {
                Log.w(str, str2);
            } else {
                Log.w(str, str2, thArr[0]);
            }
        }
    }

    public f(int i2) {
    }

    public static synchronized void a(f fVar) {
        synchronized (f.class) {
            f1644a = fVar;
        }
    }

    public abstract void a(String str, String str2, Throwable... thArr);

    public abstract void b(String str, String str2, Throwable... thArr);

    public abstract void c(String str, String str2, Throwable... thArr);

    public abstract void d(String str, String str2, Throwable... thArr);

    public abstract void e(String str, String str2, Throwable... thArr);

    public static String a(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        int i2 = f1645b;
        if (length >= i2) {
            sb.append(str.substring(0, i2));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public static synchronized f a() {
        f fVar;
        synchronized (f.class) {
            if (f1644a == null) {
                f1644a = new a(3);
            }
            fVar = f1644a;
        }
        return fVar;
    }
}
