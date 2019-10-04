package c.e.a.a.k.g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import c.e.a.a.k.b;
import c.e.a.a.k.c;
import c.e.a.a.k.e;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.charset.Charset;
import java.util.List;

/* compiled from: Tx3gDecoder */
public final class a extends c {
    public static final int o = I.b("styl");
    public static final int p = I.b("tbox");
    public final v q = new v();
    public boolean r;
    public int s;
    public int t;
    public String u;
    public float v;
    public int w;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        a(list);
    }

    public static void b(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4, int i5, int i6) {
        if (i2 != i3) {
            int i7 = i6 | 33;
            boolean z = true;
            boolean z2 = (i2 & 1) != 0;
            boolean z3 = (i2 & 2) != 0;
            if (z2) {
                if (z3) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i4, i5, i7);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i4, i5, i7);
                }
            } else if (z3) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, i5, i7);
            }
            if ((i2 & 4) == 0) {
                z = false;
            }
            if (z) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i5, i7);
            }
            if (!z && !z2 && !z3) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i4, i5, i7);
            }
        }
    }

    public final void a(List<byte[]> list) {
        String str = "sans-serif";
        boolean z = false;
        if (list != null && list.size() == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.s = bArr[24];
            this.t = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            if ("Serif".equals(I.a(bArr, 43, bArr.length - 43))) {
                str = "serif";
            }
            this.u = str;
            this.w = bArr[25] * 20;
            if ((bArr[0] & 32) != 0) {
                z = true;
            }
            this.r = z;
            if (this.r) {
                this.v = ((float) ((bArr[11] & 255) | ((bArr[10] & 255) << 8))) / ((float) this.w);
                this.v = I.a(this.v, 0.0f, 0.95f);
                return;
            }
            this.v = 0.85f;
            return;
        }
        this.s = 0;
        this.t = -1;
        this.u = str;
        this.r = false;
        this.v = 0.85f;
    }

    public e a(byte[] bArr, int i2, boolean z) {
        this.q.a(bArr, i2);
        String a2 = a(this.q);
        if (a2.isEmpty()) {
            return b.f9242a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(a2);
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        b(spannableStringBuilder2, this.s, 0, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder2, this.t, -1, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder2, this.u, "sans-serif", 0, spannableStringBuilder.length(), 16711680);
        float f2 = this.v;
        while (this.q.a() >= 8) {
            int c2 = this.q.c();
            int i3 = this.q.i();
            int i4 = this.q.i();
            boolean z2 = true;
            if (i4 == o) {
                if (this.q.a() < 2) {
                    z2 = false;
                }
                a(z2);
                int A = this.q.A();
                for (int i5 = 0; i5 < A; i5++) {
                    a(this.q, spannableStringBuilder);
                }
            } else if (i4 == p && this.r) {
                if (this.q.a() < 2) {
                    z2 = false;
                }
                a(z2);
                f2 = I.a(((float) this.q.A()) / ((float) this.w), 0.0f, 0.95f);
            }
            this.q.e(c2 + i3);
        }
        b bVar = new b(spannableStringBuilder, null, f2, 0, 0, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
        return new b(bVar);
    }

    public static String a(v vVar) {
        a(vVar.a() >= 2);
        int A = vVar.A();
        if (A == 0) {
            return "";
        }
        if (vVar.a() >= 2) {
            char e2 = vVar.e();
            if (e2 == 65279 || e2 == 65534) {
                return vVar.a(A, Charset.forName("UTF-16"));
            }
        }
        return vVar.a(A, Charset.forName("UTF-8"));
    }

    public final void a(v vVar, SpannableStringBuilder spannableStringBuilder) {
        a(vVar.a() >= 12);
        int A = vVar.A();
        int A2 = vVar.A();
        vVar.f(2);
        int u2 = vVar.u();
        vVar.f(1);
        int i2 = vVar.i();
        SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
        int i3 = A;
        int i4 = A2;
        b(spannableStringBuilder2, u2, this.s, i3, i4, 0);
        a(spannableStringBuilder2, i2, this.t, i3, i4, 0);
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4, int i5, int i6) {
        if (i2 != i3) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i2 >>> 8) | ((i2 & 255) << 24)), i4, i5, i6 | 33);
        }
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, String str, String str2, int i2, int i3, int i4) {
        if (str != str2) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i2, i3, i4 | 33);
        }
    }

    public static void a(boolean z) {
        if (!z) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }
}
