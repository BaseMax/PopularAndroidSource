package c.c.a.b;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import c.c.a.c.c.a;
import c.c.a.d.b.d;
import c.c.a.i.b;
import com.farsitel.bazaar.data.dto.responsedto.ReferrerDtoKt;
import h.f.b.j;
import java.util.List;

/* compiled from: DeepLinkHandler.kt */
public final class f {
    public static /* synthetic */ void a(Context context, Uri uri, String str, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        a(context, uri, str);
    }

    public static final void a(Context context, Uri uri, String str) {
        j.b(uri, "uri");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        List<String> b2 = context != null ? d.b(context, intent) : null;
        if (b2 != null && b2.contains(context.getPackageName())) {
            try {
                if (!(context instanceof Activity)) {
                    intent.setFlags(268435456);
                }
                intent.setPackage(context.getPackageName());
                intent.putExtra(ReferrerDtoKt.REFERRER_KEY, str);
                context.startActivity(intent);
            } catch (ActivityNotFoundException e2) {
                a.f4699b.a((Throwable) e2);
            }
        } else if (context != null) {
            String uri2 = uri.toString();
            j.a((Object) uri2, "uri.toString()");
            b.a(context, uri2, false, 2, null);
        }
    }

    public static /* synthetic */ PendingIntent a(Context context, Uri uri, Bundle bundle, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            bundle = null;
        }
        return a(context, uri, bundle);
    }

    public static final PendingIntent a(Context context, Uri uri, Bundle bundle) {
        j.b(uri, "uri");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setPackage(context != null ? context.getPackageName() : null);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (!(context instanceof Activity)) {
            intent.setFlags(268435456);
        }
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 0);
        j.a((Object) activity, "PendingIntent.getActivity(context, 0, intent, 0)");
        return activity;
    }
}
