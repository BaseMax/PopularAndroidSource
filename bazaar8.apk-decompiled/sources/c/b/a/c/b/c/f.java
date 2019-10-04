package c.b.a.c.b.c;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* compiled from: RuntimeCompat */
class f implements FilenameFilter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Pattern f3948a;

    public f(Pattern pattern) {
        this.f3948a = pattern;
    }

    public boolean accept(File file, String str) {
        return this.f3948a.matcher(str).matches();
    }
}
