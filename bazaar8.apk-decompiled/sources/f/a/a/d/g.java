package f.a.a.d;

import com.crashlytics.android.Crashlytics;
import java.util.Collection;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* compiled from: Validation */
public class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public Pattern f14004a;

    /* renamed from: b  reason: collision with root package name */
    public String f14005b;

    public void a(String str) {
        this.f14005b = str;
    }

    public void b(String str) {
        this.f14004a = Pattern.compile(str);
    }

    public boolean c(String str) {
        try {
            if (!this.f14004a.matcher(str).matches()) {
                return false;
            }
        } catch (PatternSyntaxException e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
        }
        return true;
    }

    public String a() {
        return this.f14005b;
    }

    public static String a(String str, Collection<g> collection) {
        for (g next : collection) {
            if (!next.c(str)) {
                return next.a();
            }
        }
        return null;
    }
}
