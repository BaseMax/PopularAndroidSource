package kotlin.text;

import h.f;
import h.f.a.c;
import h.f.b.j;
import h.k.n;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;

/* compiled from: Strings.kt */
final class StringsKt__StringsKt$rangesDelimitedBy$2 extends Lambda implements c<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ char[] $delimiters;
    public final /* synthetic */ boolean $ignoreCase;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StringsKt__StringsKt$rangesDelimitedBy$2(char[] cArr, boolean z) {
        super(2);
        this.$delimiters = cArr;
        this.$ignoreCase = z;
    }

    public final Pair<Integer, Integer> a(CharSequence charSequence, int i2) {
        j.b(charSequence, "$receiver");
        int a2 = n.a(charSequence, this.$delimiters, i2, this.$ignoreCase);
        if (a2 < 0) {
            return null;
        }
        return f.a(Integer.valueOf(a2), 1);
    }

    public /* bridge */ /* synthetic */ Object b(Object obj, Object obj2) {
        return a((CharSequence) obj, ((Number) obj2).intValue());
    }
}
