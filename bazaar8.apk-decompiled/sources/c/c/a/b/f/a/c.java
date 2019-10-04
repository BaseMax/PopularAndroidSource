package c.c.a.b.f.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import b.i.c.a.b;
import c.c.a.b.f.h;
import c.c.a.c.h.e;
import com.farsitel.bazaar.app.notification.NotificationType;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.ui.login.LoginActivity;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: PardakhtNotificationManager.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4646a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f4647b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4648c = c.c.a.d.a.a.f4744b.a(this.f4651f);

    /* renamed from: d  reason: collision with root package name */
    public final h.c f4649d = d.a(new PardakhtNotificationManager$locale$2(this));

    /* renamed from: e  reason: collision with root package name */
    public long f4650e = this.f4648c.m();

    /* renamed from: f  reason: collision with root package name */
    public final Context f4651f;

    /* compiled from: PardakhtNotificationManager.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(c.class), "locale", "getLocale()Ljava/util/Locale;");
        k.a((PropertyReference1) propertyReference1Impl);
        f4646a = new i[]{propertyReference1Impl};
    }

    public c(Context context) {
        j.b(context, "context");
        this.f4651f = context;
    }

    public final Locale a() {
        h.c cVar = this.f4649d;
        i iVar = f4646a[0];
        return (Locale) cVar.getValue();
    }

    public final void a(String str) {
        j.b(str, "packageName");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f4650e >= ((long) 259200000)) {
            this.f4650e = currentTimeMillis;
            this.f4648c.a(currentTimeMillis);
            try {
                String a2 = e.f4731a.a(this.f4651f, str, a());
                if (a2 == null) {
                    a2 = "";
                }
                String str2 = a2;
                Drawable d2 = e.f4731a.d(this.f4651f, str);
                Bitmap a3 = d2 != null ? b.a(d2, 0, 0, null, 7, null) : null;
                Intent intent = new Intent(this.f4651f, LoginActivity.class);
                intent.putExtra("dealerPackageName", str);
                intent.putExtra("loginType", LoginType.IN_APP_PURCHASE.ordinal());
                h.a(h.f4687h, str, str2, a3, NotificationType.IAB_LOGIN_NOTIFICATION, (List) null, 0, "iab", (h.f.a.a) new PardakhtNotificationManager$showLoginNotification$1(PendingIntent.getActivity(this.f4651f, 0, intent, 134217728)), 48, (Object) null);
            } catch (Exception e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
        }
    }
}
