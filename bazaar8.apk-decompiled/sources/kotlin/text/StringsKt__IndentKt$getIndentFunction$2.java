package kotlin.text;

import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: Indent.kt */
final class StringsKt__IndentKt$getIndentFunction$2 extends Lambda implements b<String, String> {
    public final /* synthetic */ String $indent;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$getIndentFunction$2(String str) {
        super(1);
        this.$indent = str;
    }

    public final String a(String str) {
        j.b(str, "line");
        return this.$indent + str;
    }
}
