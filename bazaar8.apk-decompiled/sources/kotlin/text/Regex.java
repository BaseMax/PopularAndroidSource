package kotlin.text;

import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: Regex.kt */
public final class Regex implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static final a f15791a = new a(null);
    public Set<? extends Object> _options;
    public final Pattern nativePattern;

    /* compiled from: Regex.kt */
    private static final class Serialized implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final a f15792a = new a(null);
        public static final long serialVersionUID = 0;
        public final int flags;
        public final String pattern;

        /* compiled from: Regex.kt */
        public static final class a {
            public a() {
            }

            public /* synthetic */ a(f fVar) {
                this();
            }
        }

        public Serialized(String str, int i2) {
            j.b(str, "pattern");
            this.pattern = str;
            this.flags = i2;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.pattern, this.flags);
            j.a((Object) compile, "Pattern.compile(pattern, flags)");
            return new Regex(compile);
        }
    }

    /* compiled from: Regex.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public Regex(Pattern pattern) {
        j.b(pattern, "nativePattern");
        this.nativePattern = pattern;
    }

    private final Object writeReplace() {
        String pattern = this.nativePattern.pattern();
        j.a((Object) pattern, "nativePattern.pattern()");
        return new Serialized(pattern, this.nativePattern.flags());
    }

    public final boolean a(CharSequence charSequence) {
        j.b(charSequence, "input");
        return this.nativePattern.matcher(charSequence).matches();
    }

    public String toString() {
        String pattern = this.nativePattern.toString();
        j.a((Object) pattern, "nativePattern.toString()");
        return pattern;
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public Regex(java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            h.f.b.j.b(r2, r0)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            java.lang.String r0 = "Pattern.compile(pattern)"
            h.f.b.j.a((java.lang.Object) r2, (java.lang.String) r0)
            r1.<init>((java.util.regex.Pattern) r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }
}
