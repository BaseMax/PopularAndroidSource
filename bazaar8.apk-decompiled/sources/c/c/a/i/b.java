package c.c.a.i;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import b.d.a.a;
import c.c.a.d.h.a.c;
import c.c.a.d.h.a.e;
import com.farsitel.bazaar.R;
import h.f.b.j;
import kotlin.text.Regex;

/* compiled from: CustomTabsExt.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Regex f6064a = new Regex("(http(s)?:\\/\\/)?(www\\.)?(\\w*\\.)?cafebazaar\\.ir\\b([-a-zA-Z0-9@:%_\\+.~#?&//=]*)");

    public static /* synthetic */ void a(Context context, String str, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        a(context, str, z);
    }

    public static final void a(Context context, String str, boolean z) {
        j.b(context, "$this$openUrl");
        j.b(str, "url");
        if (f6064a.a(str) || !z) {
            a.C0026a aVar = new a.C0026a();
            aVar.a(b.i.b.a.a(context, (int) R.color.colorPrimary));
            aVar.a(true);
            a a2 = aVar.a();
            c.a aVar2 = c.f4823a;
            Intent intent = a2.f2293a;
            j.a((Object) intent, "customTabsIntent.intent");
            aVar2.a(context, intent);
            j.a((Object) a2, "customTabsIntent");
            Uri parse = Uri.parse(str);
            j.a((Object) parse, "Uri.parse(url)");
            aVar2.a(context, a2, parse, new e());
            return;
        }
        Intent intent2 = new Intent();
        intent2.setAction("android.intent.action.VIEW");
        intent2.setData(Uri.parse(str));
        try {
            context.startActivity(intent2);
        } catch (ActivityNotFoundException e2) {
            c.c.a.c.c.a aVar3 = c.c.a.c.c.a.f4699b;
            aVar3.a((Throwable) new IllegalStateException("No Activity Found for opening :" + intent2.getData(), e2));
        }
    }
}
