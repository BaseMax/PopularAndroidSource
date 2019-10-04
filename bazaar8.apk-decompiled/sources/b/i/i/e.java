package b.i.i;

import java.util.Locale;

/* compiled from: TextDirectionHeuristicsCompat */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final d f2740a = new C0032e(null, false);

    /* renamed from: b  reason: collision with root package name */
    public static final d f2741b = new C0032e(null, true);

    /* renamed from: c  reason: collision with root package name */
    public static final d f2742c = new C0032e(b.f2748a, false);

    /* renamed from: d  reason: collision with root package name */
    public static final d f2743d = new C0032e(b.f2748a, true);

    /* renamed from: e  reason: collision with root package name */
    public static final d f2744e = new C0032e(a.f2746a, false);

    /* renamed from: f  reason: collision with root package name */
    public static final d f2745f = f.f2751b;

    /* compiled from: TextDirectionHeuristicsCompat */
    private static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2746a = new a(true);

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2747b;

        public a(boolean z) {
            this.f2747b = z;
        }

        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            boolean z = false;
            while (i2 < i4) {
                int a2 = e.a(Character.getDirectionality(charSequence.charAt(i2)));
                if (a2 != 0) {
                    if (a2 != 1) {
                        continue;
                        i2++;
                    } else if (!this.f2747b) {
                        return 1;
                    }
                } else if (this.f2747b) {
                    return 0;
                }
                z = true;
                i2++;
            }
            if (z) {
                return this.f2747b ? 1 : 0;
            }
            return 2;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat */
    private static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final b f2748a = new b();

        public int a(CharSequence charSequence, int i2, int i3) {
            int i4 = i3 + i2;
            int i5 = 2;
            while (i2 < i4 && i5 == 2) {
                i5 = e.b(Character.getDirectionality(charSequence.charAt(i2)));
                i2++;
            }
            return i5;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat */
    private interface c {
        int a(CharSequence charSequence, int i2, int i3);
    }

    /* compiled from: TextDirectionHeuristicsCompat */
    private static abstract class d implements d {

        /* renamed from: a  reason: collision with root package name */
        public final c f2749a;

        public d(c cVar) {
            this.f2749a = cVar;
        }

        public abstract boolean a();

        public final boolean a(CharSequence charSequence, int i2, int i3) {
            int a2 = this.f2749a.a(charSequence, i2, i3);
            if (a2 == 0) {
                return true;
            }
            if (a2 != 1) {
                return a();
            }
            return false;
        }

        public boolean isRtl(CharSequence charSequence, int i2, int i3) {
            if (charSequence == null || i2 < 0 || i3 < 0 || charSequence.length() - i3 < i2) {
                throw new IllegalArgumentException();
            } else if (this.f2749a == null) {
                return a();
            } else {
                return a(charSequence, i2, i3);
            }
        }
    }

    /* renamed from: b.i.i.e$e  reason: collision with other inner class name */
    /* compiled from: TextDirectionHeuristicsCompat */
    private static class C0032e extends d {

        /* renamed from: b  reason: collision with root package name */
        public final boolean f2750b;

        public C0032e(c cVar, boolean z) {
            super(cVar);
            this.f2750b = z;
        }

        public boolean a() {
            return this.f2750b;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat */
    private static class f extends d {

        /* renamed from: b  reason: collision with root package name */
        public static final f f2751b = new f();

        public f() {
            super(null);
        }

        public boolean a() {
            return f.b(Locale.getDefault()) == 1;
        }
    }

    public static int a(int i2) {
        if (i2 != 0) {
            return (i2 == 1 || i2 == 2) ? 0 : 2;
        }
        return 1;
    }

    public static int b(int i2) {
        if (i2 != 0) {
            if (!(i2 == 1 || i2 == 2)) {
                switch (i2) {
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                        break;
                    default:
                        return 2;
                }
            }
            return 0;
        }
        return 1;
    }
}
