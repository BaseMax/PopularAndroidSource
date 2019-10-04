package kotlin.text;

import h.f;
import h.f.a.c;
import h.f.b.j;
import h.k.n;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.Lambda;

/* compiled from: Strings.kt */
final class StringsKt__StringsKt$rangesDelimitedBy$4 extends Lambda implements c<CharSequence, Integer, Pair<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ List $delimitersList;
    public final /* synthetic */ boolean $ignoreCase;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StringsKt__StringsKt$rangesDelimitedBy$4(List list, boolean z) {
        super(2);
        this.$delimitersList = list;
        this.$ignoreCase = z;
    }

    public final Pair<Integer, Integer> a(CharSequence charSequence, int i2) {
        j.b(charSequence, "$receiver");
        Pair a2 = n.b(charSequence, (Collection<String>) this.$delimitersList, i2, this.$ignoreCase, false);
        if (a2 != null) {
            return f.a(a2.c(), Integer.valueOf(((String) a2.d()).length()));
        }
        return null;
    }

    public /* bridge */ /* synthetic */ Object b(Object obj, Object obj2) {
        return a((CharSequence) obj, ((Number) obj2).intValue());
    }
}
