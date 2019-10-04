package c.c.a.b.f;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.SparseArray;
import b.i.a.n;
import b.i.a.q;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.fcm.FCMMessage;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import h.a.A;
import h.a.l;
import h.a.u;
import h.c;
import h.d;
import h.f;
import h.f.a.a;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: NotificationManager.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4680a;

    /* renamed from: b  reason: collision with root package name */
    public static final a<PendingIntent> f4681b = NotificationManager$DEFAULT_PENDING_INTENT$1.f12138a;

    /* renamed from: c  reason: collision with root package name */
    public static final SparseArray<f> f4682c = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    public static final Object f4683d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static final c f4684e = d.a(NotificationManager$context$2.f12139a);

    /* renamed from: f  reason: collision with root package name */
    public static final c f4685f = d.a(NotificationManager$manager$2.f12140a);

    /* renamed from: g  reason: collision with root package name */
    public static final c f4686g = d.a(NotificationManager$managerCompat$2.f12141a);

    /* renamed from: h  reason: collision with root package name */
    public static final h f4687h;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(h.class), "context", "getContext()Landroid/content/Context;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(h.class), "manager", "getManager()Landroid/app/NotificationManager;");
        k.a((PropertyReference1) propertyReference1Impl2);
        PropertyReference1Impl propertyReference1Impl3 = new PropertyReference1Impl(k.a(h.class), "managerCompat", "getManagerCompat()Landroidx/core/app/NotificationManagerCompat;");
        k.a((PropertyReference1) propertyReference1Impl3);
        f4680a = new i[]{propertyReference1Impl, propertyReference1Impl2, propertyReference1Impl3};
        h hVar = new h();
        f4687h = hVar;
        if (c.c.a.c.h.d.a(26)) {
            c.f4671a.a(hVar.c());
        }
    }

    public final PendingIntent b(int i2) {
        Intent intent = new Intent(b(), NotificationActionReceiver.class);
        intent.setAction("notificationDelete");
        intent.putExtra("notificationId", i2);
        PendingIntent broadcast = PendingIntent.getBroadcast(b(), i2, intent, 134217728);
        j.a((Object) broadcast, "PendingIntent.getBroadca…tent.FLAG_UPDATE_CURRENT)");
        return broadcast;
    }

    public final Context b() {
        c cVar = f4684e;
        i iVar = f4680a[0];
        return (Context) cVar.getValue();
    }

    public final NotificationManager c() {
        c cVar = f4685f;
        i iVar = f4680a[1];
        return (NotificationManager) cVar.getValue();
    }

    public final q d() {
        c cVar = f4686g;
        i iVar = f4680a[2];
        return (q) cVar.getValue();
    }

    public static /* synthetic */ n.d a(h hVar, int i2, String str, int i3, List list, long j2, String str2, a aVar, n.e eVar, int i4, Object obj) {
        int i5 = i4;
        return hVar.a(i2, str, (i5 & 4) != 0 ? R.drawable.ic_bazaar_notification : i3, (List<? extends n.a>) (i5 & 8) != 0 ? l.a() : list, (i5 & 16) != 0 ? System.currentTimeMillis() : j2, (i5 & 32) != 0 ? "downloads" : str2, (a<PendingIntent>) (i5 & 64) != 0 ? f4681b : aVar, (i5 & 128) != 0 ? null : eVar);
    }

    public final boolean b(NotificationType notificationType) {
        j.b(notificationType, "notificationType");
        f fVar = f4682c.get(notificationType.f());
        if (fVar != null) {
            Map<String, d> c2 = fVar.c();
            if (c2 != null && c2.size() == 1) {
                return true;
            }
        }
        return false;
    }

    public final n.d a(int i2, String str, int i3, List<? extends n.a> list, long j2, String str2, a<PendingIntent> aVar, n.e eVar) {
        n.d dVar = new n.d(b(), str2);
        dVar.c(i3);
        dVar.a(true);
        dVar.a(b.i.b.a.a(b(), (int) R.color.colorAccent));
        dVar.c((CharSequence) str);
        if (eVar != null) {
            dVar.a(eVar);
        }
        dVar.a(j2);
        dVar.b(b(i2));
        PendingIntent invoke = aVar != null ? aVar.invoke() : null;
        if (invoke != null) {
            dVar.a(invoke);
        }
        for (n.a a2 : list) {
            dVar.a(a2);
        }
        j.a((Object) dVar, "NotificationCompat.Build…          }\n            }");
        return dVar;
    }

    public final void a(FCMMessage fCMMessage) {
        FCMMessage fCMMessage2 = fCMMessage;
        j.b(fCMMessage2, "message");
        NotificationType notificationType = NotificationType.PUSH_NOTIFICATION;
        n.c a2 = a(this, fCMMessage.j(), fCMMessage.f(), (String) null, 4, (Object) null);
        String string = b().getString(R.string.app_name);
        j.a((Object) string, "context.getString(R.string.app_name)");
        n.d a3 = a(this, notificationType.f(), string, 0, (List) null, 0, "promotions", (a) null, (n.e) a2, 92, (Object) null);
        a3.d((CharSequence) fCMMessage.i());
        a3.a(true);
        a3.b(-1);
        a3.b((CharSequence) fCMMessage.h());
        if (!fCMMessage.g()) {
            a3.a((Uri) null);
        }
        try {
            if (!(fCMMessage.d() == null || fCMMessage.a() == null || fCMMessage.b() == null)) {
                PendingIntent a4 = fCMMessage2.a(b(), fCMMessage.c());
                if (a4 != null) {
                    a3.a(a4);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (fCMMessage.e() != null) {
            c.c.a.d.g.a.i iVar = c.c.a.d.g.a.i.f4812a;
            Context b2 = b();
            String e3 = fCMMessage.e();
            if (e3 != null) {
                iVar.a(b2, e3, a3, fCMMessage.j(), fCMMessage.h(), fCMMessage.f(), d(), notificationType.f());
                return;
            }
            j.a();
            throw null;
        }
        d().a(notificationType.f(), a3.a());
    }

    public static /* synthetic */ void a(h hVar, String str, String str2, Bitmap bitmap, NotificationType notificationType, List list, long j2, String str3, a aVar, int i2, Object obj) {
        int i3 = i2;
        hVar.a(str, str2, (i3 & 4) != 0 ? null : bitmap, notificationType, (List<? extends n.a>) (i3 & 16) != 0 ? l.a() : list, (i3 & 32) != 0 ? System.currentTimeMillis() : j2, (i3 & 64) != 0 ? "downloads" : str3, (a<PendingIntent>) (i3 & 128) != 0 ? null : aVar);
    }

    public final void a(String str, String str2, Bitmap bitmap, NotificationType notificationType, List<? extends n.a> list, long j2, String str3, a<PendingIntent> aVar) {
        n.d dVar;
        String str4 = str;
        String str5 = str2;
        NotificationType notificationType2 = notificationType;
        j.b(str4, "entityId");
        j.b(str5, "entityValue");
        j.b(notificationType2, "notificationType");
        j.b(list, "notificationActions");
        j.b(str3, "channelId");
        d dVar2 = new d(str5, null, 2, null);
        synchronized (f4683d) {
            if (f4682c.get(notificationType.f()) == null) {
                dVar = a(f4687h, notificationType.f(), str2, (int) R.drawable.ic_bazaar_notification, (List) list, j2, str3, (a) aVar, (n.e) null, 128, (Object) null);
                f4682c.put(notificationType.f(), new f(dVar, A.a((Pair<? extends K, ? extends V>[]) new Pair[]{f.a(str4, dVar2)})));
            } else {
                f fVar = f4682c.get(notificationType.f());
                n.d b2 = fVar.b();
                fVar.a(str4, str5, null);
                dVar = b2;
            }
            h.h hVar = h.h.f14579a;
        }
        Resources resources = b().getResources();
        j.a((Object) resources, "context.resources");
        String e2 = f4682c.get(notificationType.f()).e(resources, notificationType2);
        Resources resources2 = b().getResources();
        j.a((Object) resources2, "context.resources");
        String a2 = f4682c.get(notificationType.f()).a(resources2, notificationType2);
        dVar.c((CharSequence) e2);
        dVar.b((CharSequence) a2);
        dVar.a((n.e) a(f4687h, e2, a2, (String) null, 4, (Object) null));
        if (bitmap != null) {
            dVar.a((n.e) a(f4687h, e2, bitmap, null, null, 12, null));
        }
        d().a(notificationType.f(), dVar.a());
    }

    public final Notification a(NotificationType notificationType, String str, String str2, int i2, List<? extends n.a> list, a<PendingIntent> aVar) {
        n.d dVar;
        String str3 = str;
        String str4 = str2;
        j.b(notificationType, "notificationType");
        j.b(str3, "entityId");
        j.b(str4, "title");
        j.b(list, "notificationActions");
        synchronized (f4683d) {
            if (f4682c.get(notificationType.f()) == null) {
                d dVar2 = new d(str4, Integer.valueOf(i2));
                dVar = a(f4687h, notificationType.f(), str2, (int) R.drawable.ic_stat_download, (List) list, 0, (String) null, (a) aVar, (n.e) null, 176, (Object) null);
                dVar.c(true);
                j.a((Object) dVar, "defaultNotificationBuild…       ).setOngoing(true)");
                f4682c.put(notificationType.f(), new f(dVar, A.a((Pair<? extends K, ? extends V>[]) new Pair[]{f.a(str3, dVar2)})));
            } else {
                f fVar = f4682c.get(notificationType.f());
                n.d b2 = fVar.b();
                fVar.a(str3, str4, Integer.valueOf(i2));
                dVar = b2;
            }
            h.h hVar = h.h.f14579a;
        }
        f fVar2 = f4682c.get(notificationType.f());
        Resources resources = b().getResources();
        j.a((Object) resources, "context.resources");
        String e2 = fVar2.e(resources, notificationType);
        int d2 = fVar2.d();
        dVar.c((CharSequence) e2);
        dVar.a(100, Math.max(d2, 0), d2 < 0);
        if (d2 >= 0) {
            Locale locale = Locale.getDefault();
            j.a((Object) locale, "Locale.getDefault()");
            Object[] objArr = {Integer.valueOf(d2)};
            String format = String.format(locale, "%d%%", Arrays.copyOf(objArr, objArr.length));
            j.a((Object) format, "java.lang.String.format(locale, this, *args)");
            dVar.b((CharSequence) format);
        }
        Notification a2 = dVar.a();
        d().a(notificationType.f(), a2);
        j.a((Object) a2, "notification");
        return a2;
    }

    public static /* synthetic */ void a(h hVar, NotificationType notificationType, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = null;
        }
        hVar.a(notificationType, str);
    }

    public final synchronized void a(NotificationType notificationType, String str) {
        j.b(notificationType, "notificationType");
        f fVar = f4682c.get(notificationType.f());
        if (fVar != null) {
            Map<String, d> c2 = fVar.c();
            if (c2 != null) {
                if (str == null) {
                    f4682c.get(notificationType.f()).a();
                } else if (c2.containsKey(str)) {
                    f4682c.get(notificationType.f()).a(str);
                    if (c2.isEmpty()) {
                        f4682c.remove(notificationType.f());
                        f4687h.a(notificationType.f());
                    } else {
                        String str2 = (String) u.b(c2.keySet());
                        d dVar = c2.get(str2);
                        h hVar = f4687h;
                        if (dVar != null) {
                            hVar.a(notificationType, str2, dVar);
                        } else {
                            j.a();
                            throw null;
                        }
                    }
                }
            }
        }
    }

    public static /* synthetic */ n.c a(h hVar, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str3 = null;
        }
        return hVar.a(str, str2, str3);
    }

    public final n.c a(String str, String str2, String str3) {
        n.c cVar = new n.c();
        cVar.b(str);
        cVar.c(str3);
        cVar.a((CharSequence) str2);
        return cVar;
    }

    public static /* synthetic */ n.b a(h hVar, String str, Bitmap bitmap, String str2, Bitmap bitmap2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        if ((i2 & 8) != 0) {
            bitmap2 = null;
        }
        return hVar.a(str, bitmap, str2, bitmap2);
    }

    public final n.b a(String str, Bitmap bitmap, String str2, Bitmap bitmap2) {
        n.b bVar = new n.b();
        bVar.a((CharSequence) str);
        bVar.b((CharSequence) str2);
        bVar.b(bitmap);
        bVar.a(bitmap2);
        return bVar;
    }

    public final void a() {
        synchronized (f4683d) {
            f4682c.clear();
            h.h hVar = h.h.f14579a;
        }
        d().a();
    }

    public final void a(int i2) {
        synchronized (f4683d) {
            f4682c.remove(i2);
            h.h hVar = h.h.f14579a;
        }
        d().a(i2);
    }

    public final void a(NotificationType notificationType, String str, d dVar) {
        NotificationType notificationType2 = notificationType;
        NotificationManager$refreshNotificationWithType$1 notificationManager$refreshNotificationWithType$1 = new NotificationManager$refreshNotificationWithType$1(dVar, notificationType);
        int i2 = g.f4679a[notificationType.ordinal()];
        if (i2 == 1 || i2 == 2) {
            if (dVar.c()) {
                String a2 = dVar.a();
                Integer b2 = dVar.b();
                if (b2 != null) {
                    a(notificationType, str, a2, b2.intValue(), (List<? extends n.a>) l.a(), (a<PendingIntent>) null);
                    return;
                }
                j.a();
                throw null;
            }
            notificationManager$refreshNotificationWithType$1.invoke();
        } else if (dVar.d()) {
            a(this, str, dVar.a(), (Bitmap) null, notificationType, (List) null, 0, (String) null, (a) null, 244, (Object) null);
        } else {
            notificationManager$refreshNotificationWithType$1.invoke();
        }
    }

    public final List<String> a(NotificationType notificationType) {
        j.b(notificationType, "notificationType");
        f fVar = f4682c.get(notificationType.f());
        if (fVar != null) {
            Map<String, d> c2 = fVar.c();
            if (c2 != null) {
                Set<String> keySet = c2.keySet();
                if (keySet != null) {
                    return u.h(keySet);
                }
            }
        }
        return null;
    }
}
