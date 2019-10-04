package c.e.a.a.k.h;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import c.e.a.a.k.b;
import c.e.a.a.o.p;

/* compiled from: WebvttCue */
public final class f extends b {
    public final long o;
    public final long p;

    /* compiled from: WebvttCue */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f9262a;

        /* renamed from: b  reason: collision with root package name */
        public long f9263b;

        /* renamed from: c  reason: collision with root package name */
        public SpannableStringBuilder f9264c;

        /* renamed from: d  reason: collision with root package name */
        public Layout.Alignment f9265d;

        /* renamed from: e  reason: collision with root package name */
        public float f9266e;

        /* renamed from: f  reason: collision with root package name */
        public int f9267f;

        /* renamed from: g  reason: collision with root package name */
        public int f9268g;

        /* renamed from: h  reason: collision with root package name */
        public float f9269h;

        /* renamed from: i  reason: collision with root package name */
        public int f9270i;

        /* renamed from: j  reason: collision with root package name */
        public float f9271j;

        public a() {
            c();
        }

        public f a() {
            if (this.f9269h != Float.MIN_VALUE && this.f9270i == Integer.MIN_VALUE) {
                b();
            }
            f fVar = new f(this.f9262a, this.f9263b, this.f9264c, this.f9265d, this.f9266e, this.f9267f, this.f9268g, this.f9269h, this.f9270i, this.f9271j);
            return fVar;
        }

        public a b(long j2) {
            this.f9262a = j2;
            return this;
        }

        public void c() {
            this.f9262a = 0;
            this.f9263b = 0;
            this.f9264c = null;
            this.f9265d = null;
            this.f9266e = Float.MIN_VALUE;
            this.f9267f = Integer.MIN_VALUE;
            this.f9268g = Integer.MIN_VALUE;
            this.f9269h = Float.MIN_VALUE;
            this.f9270i = Integer.MIN_VALUE;
            this.f9271j = Float.MIN_VALUE;
        }

        public a b(int i2) {
            this.f9267f = i2;
            return this;
        }

        public a b(float f2) {
            this.f9269h = f2;
            return this;
        }

        public a a(long j2) {
            this.f9263b = j2;
            return this;
        }

        public final a b() {
            Layout.Alignment alignment = this.f9265d;
            if (alignment == null) {
                this.f9270i = Integer.MIN_VALUE;
            } else {
                int i2 = e.f9261a[alignment.ordinal()];
                if (i2 == 1) {
                    this.f9270i = 0;
                } else if (i2 == 2) {
                    this.f9270i = 1;
                } else if (i2 != 3) {
                    p.d("WebvttCueBuilder", "Unrecognized alignment: " + this.f9265d);
                    this.f9270i = 0;
                } else {
                    this.f9270i = 2;
                }
            }
            return this;
        }

        public a a(SpannableStringBuilder spannableStringBuilder) {
            this.f9264c = spannableStringBuilder;
            return this;
        }

        public a a(Layout.Alignment alignment) {
            this.f9265d = alignment;
            return this;
        }

        public a a(float f2) {
            this.f9266e = f2;
            return this;
        }

        public a a(int i2) {
            this.f9268g = i2;
            return this;
        }

        public a c(int i2) {
            this.f9270i = i2;
            return this;
        }

        public a c(float f2) {
            this.f9271j = f2;
            return this;
        }
    }

    public f(CharSequence charSequence) {
        this(0, 0, charSequence);
    }

    public boolean f() {
        return this.f9117d == Float.MIN_VALUE && this.f9120g == Float.MIN_VALUE;
    }

    public f(long j2, long j3, CharSequence charSequence) {
        this(j2, j3, charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(long j2, long j3, CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4) {
        super(charSequence, alignment, f2, i2, i3, f3, i4, f4);
        this.o = j2;
        this.p = j3;
    }
}
