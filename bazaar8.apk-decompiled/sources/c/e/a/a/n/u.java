package c.e.a.a.n;

import android.text.TextUtils;
import c.e.a.a.o.I;

/* compiled from: HttpDataSource */
public final /* synthetic */ class u {
    public static /* synthetic */ boolean a(String str) {
        String l2 = I.l(str);
        return !TextUtils.isEmpty(l2) && (!l2.contains("text") || l2.contains("text/vtt")) && !l2.contains("html") && !l2.contains("xml");
    }
}
