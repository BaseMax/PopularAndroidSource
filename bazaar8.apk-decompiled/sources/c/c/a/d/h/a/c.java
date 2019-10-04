package c.c.a.d.h.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import c.c.a.c.h.d;
import com.farsitel.bazaar.core.widget.customtabs.KeepAliveService;
import h.f.b.f;
import h.f.b.j;

/* compiled from: CustomTabsHelper.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4823a = new a(null);

    /* compiled from: CustomTabsHelper.kt */
    public static final class a {
        public a() {
        }

        public final void a(Context context, b.d.a.a aVar, Uri uri, b bVar) {
            j.b(context, "context");
            j.b(aVar, "customTabsIntent");
            j.b(uri, "uri");
            String a2 = d.a(context);
            if (a2 != null) {
                if (d.a(22)) {
                    Intent intent = aVar.f2293a;
                    intent.putExtra("android.intent.extra.REFERRER", Uri.parse("2//" + context.getPackageName()));
                }
                aVar.f2293a.setPackage(a2);
                aVar.a(context, uri);
            } else if (bVar != null) {
                bVar.a(context, uri);
            }
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(Context context, Intent intent) {
            j.b(context, "context");
            j.b(intent, "intent");
            String canonicalName = KeepAliveService.class.getCanonicalName();
            if (canonicalName != null) {
                intent.putExtra("android.support.customtabs.extra.KEEP_ALIVE", new Intent().setClassName(context.getPackageName(), canonicalName));
            }
        }
    }

    /* compiled from: CustomTabsHelper.kt */
    public interface b {
        void a(Context context, Uri uri);
    }

    public final void a(Activity activity) {
        throw null;
    }

    public final void b(Activity activity) {
        throw null;
    }
}
