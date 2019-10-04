package c.c.a.c.b;

import h.f.b.j;
import java.util.regex.Pattern;

/* compiled from: StringExt.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f4694a;

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f4695b;

    /* renamed from: c  reason: collision with root package name */
    public static final a f4696c = new a();

    static {
        Pattern compile = Pattern.compile("(\\+[0-9]+[\\- .]*)?(\\([0-9]+\\)[\\- .]*)?([0-9][0-9\\- .]+[0-9])");
        j.a((Object) compile, "Pattern.compile(\"\"\"(\\+[0…[0-9][0-9\\- .]+[0-9])\"\"\")");
        f4694a = compile;
        Pattern compile2 = Pattern.compile("[a-zA-Z0-9+._%\\-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
        j.a((Object) compile2, "Pattern.compile(\n       …-Z0-9\\-]{0,25})+\"\"\"\n    )");
        f4695b = compile2;
    }

    public final Pattern a() {
        return f4695b;
    }

    public final Pattern b() {
        return f4694a;
    }
}
