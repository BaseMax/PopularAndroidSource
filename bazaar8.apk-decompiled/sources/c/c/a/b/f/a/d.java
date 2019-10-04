package c.c.a.b.f.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.os.Bundle;
import b.i.a.n;
import c.c.a.b.f.h;
import c.c.a.c.h.e;
import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import h.a.m;
import h.c;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: UpgradableAppsNotification.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4652a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f4653b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final c f4654c = h.d.a(new UpgradableAppsNotification$tapIntent$2(this));

    /* renamed from: d  reason: collision with root package name */
    public final c f4655d = h.d.a(new UpgradableAppsNotification$maliciousTapIntent$2(this));

    /* renamed from: e  reason: collision with root package name */
    public final c f4656e = h.d.a(new UpgradableAppsNotification$locale$2(this));

    /* renamed from: f  reason: collision with root package name */
    public final Context f4657f;

    /* renamed from: g  reason: collision with root package name */
    public final ba f4658g;

    /* renamed from: h  reason: collision with root package name */
    public final c.c.a.e.d.u.a f4659h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.a.a f4660i;

    /* compiled from: UpgradableAppsNotification.kt */
    public static final class a {
        public a() {
        }

        public final void a(NotificationType notificationType) {
            j.b(notificationType, "notificationType");
            h.f4687h.a(notificationType.f());
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final void a(Context context, Bundle bundle) {
            if (context != null && bundle != null) {
                Intent intent = new Intent(context, DownloadService.class);
                intent.setAction("BATCH_DOWNLOAD");
                intent.putExtras(bundle);
                context.startService(intent);
            }
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(d.class), "tapIntent", "getTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(d.class), "maliciousTapIntent", "getMaliciousTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl2);
        PropertyReference1Impl propertyReference1Impl3 = new PropertyReference1Impl(k.a(d.class), "locale", "getLocale()Ljava/util/Locale;");
        k.a((PropertyReference1) propertyReference1Impl3);
        f4652a = new i[]{propertyReference1Impl, propertyReference1Impl2, propertyReference1Impl3};
    }

    public d(Context context, ba baVar, c.c.a.e.d.u.a aVar, c.c.a.e.d.a.a aVar2) {
        j.b(context, "context");
        j.b(baVar, "upgradableAppRepository");
        j.b(aVar, "settingsRepository");
        j.b(aVar2, "accountRepository");
        this.f4657f = context;
        this.f4658g = baVar;
        this.f4659h = aVar;
        this.f4660i = aVar2;
    }

    public final Locale a() {
        c cVar = this.f4656e;
        i iVar = f4652a[2];
        return (Locale) cVar.getValue();
    }

    public final PendingIntent b() {
        c cVar = this.f4655d;
        i iVar = f4652a[1];
        return (PendingIntent) cVar.getValue();
    }

    public final PendingIntent c() {
        c cVar = this.f4654c;
        i iVar = f4652a[0];
        return (PendingIntent) cVar.getValue();
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0026  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super h.h> r15) {
        /*
            r14 = this;
            boolean r0 = r15 instanceof com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification$requestToShow$1
            if (r0 == 0) goto L_0x0013
            r0 = r15
            com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification$requestToShow$1 r0 = (com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification$requestToShow$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification$requestToShow$1 r0 = new com.farsitel.bazaar.app.notification.type.UpgradableAppsNotification$requestToShow$1
            r0.<init>(r14, r15)
        L_0x0018:
            java.lang.Object r15 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L_0x006e
            if (r2 == r6) goto L_0x0066
            if (r2 == r5) goto L_0x005a
            if (r2 == r4) goto L_0x0049
            if (r2 != r3) goto L_0x0041
            java.lang.Object r1 = r0.L$2
            java.util.List r1 = (java.util.List) r1
            boolean r1 = r0.Z$0
            java.lang.Object r1 = r0.L$1
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.b.f.a.d r0 = (c.c.a.b.f.a.d) r0
            h.e.a((java.lang.Object) r15)
            goto L_0x010d
        L_0x0041:
            java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r15.<init>(r0)
            throw r15
        L_0x0049:
            boolean r2 = r0.Z$0
            java.lang.Object r4 = r0.L$1
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r0.L$0
            c.c.a.b.f.a.d r5 = (c.c.a.b.f.a.d) r5
            h.e.a((java.lang.Object) r15)
            r13 = r5
            r5 = r2
            r2 = r13
            goto L_0x00b7
        L_0x005a:
            java.lang.Object r1 = r0.L$1
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.b.f.a.d r0 = (c.c.a.b.f.a.d) r0
            h.e.a((java.lang.Object) r15)
            goto L_0x009a
        L_0x0066:
            java.lang.Object r2 = r0.L$0
            c.c.a.b.f.a.d r2 = (c.c.a.b.f.a.d) r2
            h.e.a((java.lang.Object) r15)
            goto L_0x007f
        L_0x006e:
            h.e.a((java.lang.Object) r15)
            c.c.a.e.d.b.ba r15 = r14.f4658g
            r0.L$0 = r14
            r0.label = r6
            java.lang.Object r15 = r15.a((h.c.b<? super java.util.List<com.farsitel.bazaar.common.model.page.ListItem.App>>) r0)
            if (r15 != r1) goto L_0x007e
            return r1
        L_0x007e:
            r2 = r14
        L_0x007f:
            java.util.List r15 = (java.util.List) r15
            boolean r7 = r15.isEmpty()
            r7 = r7 ^ r6
            if (r7 == 0) goto L_0x009b
            r2.b((java.util.List<com.farsitel.bazaar.common.model.page.ListItem.App>) r15)
            c.c.a.e.d.b.ba r3 = r2.f4658g
            r0.L$0 = r2
            r0.L$1 = r15
            r0.label = r5
            java.lang.Object r15 = r3.d(r0)
            if (r15 != r1) goto L_0x009a
            return r1
        L_0x009a:
            return r15
        L_0x009b:
            c.c.a.e.d.u.a r5 = r2.f4659h
            boolean r5 = r5.G()
            if (r5 == 0) goto L_0x010e
            c.c.a.e.d.b.ba r7 = r2.f4658g
            r0.L$0 = r2
            r0.L$1 = r15
            r0.Z$0 = r5
            r0.label = r4
            java.lang.Object r4 = r7.b((h.c.b<? super java.util.List<com.farsitel.bazaar.common.model.page.ListItem.App>>) r0)
            if (r4 != r1) goto L_0x00b4
            return r1
        L_0x00b4:
            r13 = r4
            r4 = r15
            r15 = r13
        L_0x00b7:
            java.util.List r15 = (java.util.List) r15
            java.util.Iterator r7 = r15.iterator()
        L_0x00bd:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L_0x00ea
            java.lang.Object r8 = r7.next()
            com.farsitel.bazaar.common.model.page.ListItem$App r8 = (com.farsitel.bazaar.common.model.page.ListItem.App) r8
            com.farsitel.bazaar.common.model.page.PageAppItem r9 = r8.getApp()
            c.c.a.c.h.e r10 = c.c.a.c.h.e.f4731a
            android.content.Context r11 = r2.f4657f
            com.farsitel.bazaar.common.model.page.PageAppItem r8 = r8.getApp()
            java.lang.String r8 = r8.getPackageName()
            java.util.Locale r12 = r2.a()
            java.lang.String r8 = r10.a((android.content.Context) r11, (java.lang.String) r8, (java.util.Locale) r12)
            if (r8 == 0) goto L_0x00e4
            goto L_0x00e6
        L_0x00e4:
            java.lang.String r8 = ""
        L_0x00e6:
            r9.setAppName(r8)
            goto L_0x00bd
        L_0x00ea:
            boolean r7 = r15.isEmpty()
            r6 = r6 ^ r7
            if (r6 == 0) goto L_0x010e
            c.c.a.e.d.a.a r6 = r2.f4660i
            boolean r6 = r6.x()
            r2.a(r15, r6)
            c.c.a.e.d.b.ba r6 = r2.f4658g
            r0.L$0 = r2
            r0.L$1 = r4
            r0.Z$0 = r5
            r0.L$2 = r15
            r0.label = r3
            java.lang.Object r15 = r6.e(r0)
            if (r15 != r1) goto L_0x010d
            return r1
        L_0x010d:
            return r15
        L_0x010e:
            h.h r15 = h.h.f14579a
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.f.a.d.a(h.c.b):java.lang.Object");
    }

    public final void b(List<ListItem.App> list) {
        for (ListItem.App next : list) {
            h.a(h.f4687h, next.getApp().getPackageName(), next.getApp().getAppName(), (Bitmap) null, NotificationType.MALICIOUS_APPS, (List) null, 0, "updates", (h.f.a.a) new UpgradableAppsNotification$showMaliciousAppNotification$1(this), 52, (Object) null);
        }
    }

    public final void a(List<ListItem.App> list, boolean z) {
        String str;
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(new n.a(R.drawable.ic_refresh, this.f4657f.getString(R.string.update_all), a(list)));
        }
        for (ListItem.App next : list) {
            h hVar = h.f4687h;
            String packageName = next.getApp().getPackageName();
            PackageInfo e2 = e.f4731a.e(this.f4657f, next.getApp().getPackageName());
            if (e2 != null) {
                str = c.c.a.c.b.h.a(e2, this.f4657f, a());
                if (str != null) {
                    h.a(hVar, packageName, str, (Bitmap) null, NotificationType.UPGRADABLE_APPS, (List) arrayList, 0, "updates", (h.f.a.a) new UpgradableAppsNotification$showNotification$1(this), 36, (Object) null);
                }
            }
            str = "";
            h.a(hVar, packageName, str, (Bitmap) null, NotificationType.UPGRADABLE_APPS, (List) arrayList, 0, "updates", (h.f.a.a) new UpgradableAppsNotification$showNotification$1(this), 36, (Object) null);
        }
    }

    public final PendingIntent a(List<ListItem.App> list) {
        ArrayList<ListItem.App> arrayList = new ArrayList<>();
        for (T next : list) {
            if (((ListItem.App) next).getApp().getEntityState() != EntityState.FILE_EXISTS) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(m.a(arrayList, 10));
        for (ListItem.App fromAppItem : arrayList) {
            arrayList2.add(UpgradableApp.Companion.fromAppItem(fromAppItem));
        }
        Intent intent = new Intent(this.f4657f, NotificationActionReceiver.class);
        intent.setAction("notificationClicked");
        intent.putExtra("upgradableItems", DownloadService.f12108b.a((List<UpgradableApp>) arrayList2));
        intent.putExtra("notificationType", NotificationType.UPGRADABLE_APPS.ordinal());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f4657f, NotificationType.UPGRADABLE_APPS.f(), intent, 134217728);
        j.a((Object) broadcast, "PendingIntent.getBroadca…_UPDATE_CURRENT\n        )");
        return broadcast;
    }
}
