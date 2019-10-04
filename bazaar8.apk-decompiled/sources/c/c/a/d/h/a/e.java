package c.c.a.d.h.a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import c.c.a.c.c.a;
import c.c.a.d.h.a.c;
import h.f.b.j;

/* compiled from: OpenUriFallback.kt */
public final class e implements c.b {
    public void a(Context context, Uri uri) {
        j.b(context, "context");
        j.b(uri, "uri");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(uri);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            a aVar = a.f4699b;
            aVar.a((Throwable) new IllegalStateException("No Activity Found for opening :" + intent.getData(), e2));
        }
    }
}
