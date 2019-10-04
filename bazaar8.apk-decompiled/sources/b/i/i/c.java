package b.i.i;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.concurrent.Executor;

/* compiled from: PrecomputedTextCompat */
public class c implements Spannable {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2727a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static Executor f2728b = null;

    /* renamed from: c  reason: collision with root package name */
    public final Spannable f2729c;

    /* renamed from: d  reason: collision with root package name */
    public final a f2730d;

    /* compiled from: PrecomputedTextCompat */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final TextPaint f2731a;

        /* renamed from: b  reason: collision with root package name */
        public final TextDirectionHeuristic f2732b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2733c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2734d;

        /* renamed from: e  reason: collision with root package name */
        public final PrecomputedText.Params f2735e = null;

        /* renamed from: b.i.i.c$a$a  reason: collision with other inner class name */
        /* compiled from: PrecomputedTextCompat */
        public static class C0031a {

            /* renamed from: a  reason: collision with root package name */
            public final TextPaint f2736a;

            /* renamed from: b  reason: collision with root package name */
            public TextDirectionHeuristic f2737b;

            /* renamed from: c  reason: collision with root package name */
            public int f2738c;

            /* renamed from: d  reason: collision with root package name */
            public int f2739d;

            public C0031a(TextPaint textPaint) {
                this.f2736a = textPaint;
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f2738c = 1;
                    this.f2739d = 1;
                } else {
                    this.f2739d = 0;
                    this.f2738c = 0;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.f2737b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f2737b = null;
                }
            }

            public C0031a a(int i2) {
                this.f2738c = i2;
                return this;
            }

            public C0031a b(int i2) {
                this.f2739d = i2;
                return this;
            }

            public C0031a a(TextDirectionHeuristic textDirectionHeuristic) {
                this.f2737b = textDirectionHeuristic;
                return this;
            }

            public a a() {
                return new a(this.f2736a, this.f2737b, this.f2738c, this.f2739d);
            }
        }

        public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i2, int i3) {
            this.f2731a = textPaint;
            this.f2732b = textDirectionHeuristic;
            this.f2733c = i2;
            this.f2734d = i3;
        }

        public int a() {
            return this.f2733c;
        }

        public int b() {
            return this.f2734d;
        }

        public TextDirectionHeuristic c() {
            return this.f2732b;
        }

        public TextPaint d() {
            return this.f2731a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!a(aVar)) {
                return false;
            }
            return Build.VERSION.SDK_INT < 18 || this.f2732b == aVar.c();
        }

        public int hashCode() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return b.i.j.c.a(Float.valueOf(this.f2731a.getTextSize()), Float.valueOf(this.f2731a.getTextScaleX()), Float.valueOf(this.f2731a.getTextSkewX()), Float.valueOf(this.f2731a.getLetterSpacing()), Integer.valueOf(this.f2731a.getFlags()), this.f2731a.getTextLocales(), this.f2731a.getTypeface(), Boolean.valueOf(this.f2731a.isElegantTextHeight()), this.f2732b, Integer.valueOf(this.f2733c), Integer.valueOf(this.f2734d));
            } else if (i2 >= 21) {
                return b.i.j.c.a(Float.valueOf(this.f2731a.getTextSize()), Float.valueOf(this.f2731a.getTextScaleX()), Float.valueOf(this.f2731a.getTextSkewX()), Float.valueOf(this.f2731a.getLetterSpacing()), Integer.valueOf(this.f2731a.getFlags()), this.f2731a.getTextLocale(), this.f2731a.getTypeface(), Boolean.valueOf(this.f2731a.isElegantTextHeight()), this.f2732b, Integer.valueOf(this.f2733c), Integer.valueOf(this.f2734d));
            } else if (i2 >= 18) {
                return b.i.j.c.a(Float.valueOf(this.f2731a.getTextSize()), Float.valueOf(this.f2731a.getTextScaleX()), Float.valueOf(this.f2731a.getTextSkewX()), Integer.valueOf(this.f2731a.getFlags()), this.f2731a.getTextLocale(), this.f2731a.getTypeface(), this.f2732b, Integer.valueOf(this.f2733c), Integer.valueOf(this.f2734d));
            } else if (i2 >= 17) {
                return b.i.j.c.a(Float.valueOf(this.f2731a.getTextSize()), Float.valueOf(this.f2731a.getTextScaleX()), Float.valueOf(this.f2731a.getTextSkewX()), Integer.valueOf(this.f2731a.getFlags()), this.f2731a.getTextLocale(), this.f2731a.getTypeface(), this.f2732b, Integer.valueOf(this.f2733c), Integer.valueOf(this.f2734d));
            } else {
                return b.i.j.c.a(Float.valueOf(this.f2731a.getTextSize()), Float.valueOf(this.f2731a.getTextScaleX()), Float.valueOf(this.f2731a.getTextSkewX()), Integer.valueOf(this.f2731a.getFlags()), this.f2731a.getTypeface(), this.f2732b, Integer.valueOf(this.f2733c), Integer.valueOf(this.f2734d));
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f2731a.getTextSize());
            sb.append(", textScaleX=" + this.f2731a.getTextScaleX());
            sb.append(", textSkewX=" + this.f2731a.getTextSkewX());
            if (Build.VERSION.SDK_INT >= 21) {
                sb.append(", letterSpacing=" + this.f2731a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f2731a.isElegantTextHeight());
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                sb.append(", textLocale=" + this.f2731a.getTextLocales());
            } else if (i2 >= 17) {
                sb.append(", textLocale=" + this.f2731a.getTextLocale());
            }
            sb.append(", typeface=" + this.f2731a.getTypeface());
            if (Build.VERSION.SDK_INT >= 26) {
                sb.append(", variationSettings=" + this.f2731a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f2732b);
            sb.append(", breakStrategy=" + this.f2733c);
            sb.append(", hyphenationFrequency=" + this.f2734d);
            sb.append("}");
            return sb.toString();
        }

        public boolean a(a aVar) {
            PrecomputedText.Params params = this.f2735e;
            if (params != null) {
                return params.equals(aVar.f2735e);
            }
            if ((Build.VERSION.SDK_INT >= 23 && (this.f2733c != aVar.a() || this.f2734d != aVar.b())) || this.f2731a.getTextSize() != aVar.d().getTextSize() || this.f2731a.getTextScaleX() != aVar.d().getTextScaleX() || this.f2731a.getTextSkewX() != aVar.d().getTextSkewX()) {
                return false;
            }
            if ((Build.VERSION.SDK_INT >= 21 && (this.f2731a.getLetterSpacing() != aVar.d().getLetterSpacing() || !TextUtils.equals(this.f2731a.getFontFeatureSettings(), aVar.d().getFontFeatureSettings()))) || this.f2731a.getFlags() != aVar.d().getFlags()) {
                return false;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                if (!this.f2731a.getTextLocales().equals(aVar.d().getTextLocales())) {
                    return false;
                }
            } else if (i2 >= 17 && !this.f2731a.getTextLocale().equals(aVar.d().getTextLocale())) {
                return false;
            }
            if (this.f2731a.getTypeface() == null) {
                if (aVar.d().getTypeface() != null) {
                    return false;
                }
            } else if (!this.f2731a.getTypeface().equals(aVar.d().getTypeface())) {
                return false;
            }
            return true;
        }

        public a(PrecomputedText.Params params) {
            this.f2731a = params.getTextPaint();
            this.f2732b = params.getTextDirection();
            this.f2733c = params.getBreakStrategy();
            this.f2734d = params.getHyphenationFrequency();
        }
    }

    public a a() {
        return this.f2730d;
    }

    public char charAt(int i2) {
        return this.f2729c.charAt(i2);
    }

    public int getSpanEnd(Object obj) {
        return this.f2729c.getSpanEnd(obj);
    }

    public int getSpanFlags(Object obj) {
        return this.f2729c.getSpanFlags(obj);
    }

    public int getSpanStart(Object obj) {
        return this.f2729c.getSpanStart(obj);
    }

    public <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        return this.f2729c.getSpans(i2, i3, cls);
    }

    public int length() {
        return this.f2729c.length();
    }

    public int nextSpanTransition(int i2, int i3, Class cls) {
        return this.f2729c.nextSpanTransition(i2, i3, cls);
    }

    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f2729c.removeSpan(obj);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    public void setSpan(Object obj, int i2, int i3, int i4) {
        if (!(obj instanceof MetricAffectingSpan)) {
            this.f2729c.setSpan(obj, i2, i3, i4);
            return;
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    public CharSequence subSequence(int i2, int i3) {
        return this.f2729c.subSequence(i2, i3);
    }

    public String toString() {
        return this.f2729c.toString();
    }
}
