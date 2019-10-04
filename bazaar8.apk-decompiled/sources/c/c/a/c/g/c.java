package c.c.a.c.g;

import android.content.Context;
import android.content.Intent;
import c.c.a.c.a;
import h.f.b.j;

/* compiled from: Intent.kt */
public final class c {
    public static /* synthetic */ void a(Context context, String str, String str2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = context.getString(a.share_entity_title);
            j.a((Object) str2, "context.getString(R.string.share_entity_title)");
        }
        a(context, str, str2);
    }

    public static final void a(Context context, String str, String str2) {
        j.b(context, "context");
        j.b(str, "shareMessage");
        j.b(str2, "shareSubject");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.setFlags(268435456);
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str);
        context.startActivity(Intent.createChooser(intent, context.getString(a.share_entity_title)));
    }
}
