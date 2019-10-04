package b.w;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: b.w.m  reason: case insensitive filesystem */
/* compiled from: NavDeepLink */
public class C0316m {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f3306a = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList<String> f3307b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    public final Pattern f3308c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f3309d;

    public C0316m(String str) {
        StringBuilder sb = new StringBuilder("^");
        if (!f3306a.matcher(str).find()) {
            sb.append("http[s]?://");
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(str);
        boolean z = !str.contains(".*");
        int i2 = 0;
        while (matcher.find()) {
            this.f3307b.add(matcher.group(1));
            sb.append(Pattern.quote(str.substring(i2, matcher.start())));
            sb.append("(.+?)");
            i2 = matcher.end();
            z = false;
        }
        if (i2 < str.length()) {
            sb.append(Pattern.quote(str.substring(i2)));
        }
        this.f3308c = Pattern.compile(sb.toString().replace(".*", "\\E.*\\Q"));
        this.f3309d = z;
    }

    public boolean a() {
        return this.f3309d;
    }

    public Bundle a(Uri uri, Map<String, C0310g> map) {
        Matcher matcher = this.f3308c.matcher(uri.toString());
        if (!matcher.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.f3307b.size();
        int i2 = 0;
        while (i2 < size) {
            String str = this.f3307b.get(i2);
            i2++;
            String decode = Uri.decode(matcher.group(i2));
            C0310g gVar = map.get(str);
            if (gVar != null) {
                try {
                    gVar.a().a(bundle, str, decode);
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            } else {
                bundle.putString(str, decode);
            }
        }
        return bundle;
    }
}
