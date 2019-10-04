package c.c.a.b.f.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import b.i.a.n;
import c.c.a.b.d.b;
import c.c.a.b.f.h;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: AppDownloadNotification.kt */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4640a;

    /* renamed from: b  reason: collision with root package name */
    public static final C0069a f4641b = new C0069a(null);

    /* renamed from: c  reason: collision with root package name */
    public final c f4642c = d.a(new AppDownloadNotification$downloadingTapIntent$2(this));

    /* renamed from: d  reason: collision with root package name */
    public final c f4643d = d.a(new AppDownloadNotification$downloadCompleteTapIntent$2(this));

    /* renamed from: e  reason: collision with root package name */
    public final Context f4644e;

    /* renamed from: f  reason: collision with root package name */
    public final AppDownloaderModel f4645f;

    /* renamed from: c.c.a.b.f.a.a$a  reason: collision with other inner class name */
    /* compiled from: AppDownloadNotification.kt */
    public static final class C0069a {
        public C0069a() {
        }

        public final void a(Context context, NotificationType notificationType, b bVar) {
            j.b(notificationType, "notificationType");
            j.b(bVar, "appManager");
            if (context != null) {
                List<String> a2 = h.f4687h.a(notificationType);
                if (a2 == null || a2.size() != 1) {
                    a.f4641b.a(context);
                    return;
                }
                String str = a2.get(0);
                if (notificationType == NotificationType.APP_DOWNLOAD_COMPLETE) {
                    a.f4641b.a(context, bVar, a2.get(0));
                } else {
                    a.f4641b.a(context, str);
                }
            }
        }

        public /* synthetic */ C0069a(f fVar) {
            this();
        }

        public final void a(Context context, NotificationType notificationType) {
            j.b(notificationType, "notificationType");
            if (context != null) {
                List<String> a2 = h.f4687h.a(notificationType);
                if (a2 == null || a2.size() != 1) {
                    Intent intent = new Intent(context, DownloadService.class);
                    intent.setAction("STOP_ALL");
                    context.startService(intent);
                    return;
                }
                Intent intent2 = new Intent(context, DownloadService.class);
                intent2.setAction("STOP");
                intent2.putExtras(DownloadService.f12108b.a(a2.get(0)));
                context.startService(intent2);
            }
        }

        public final void a(Context context, b bVar, String str) {
            context.startActivity(bVar.l(str));
        }

        public final void a(Context context, String str) {
            Uri parse = Uri.parse("bazaar://details?id=" + str);
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(context, parse, (String) null, 4, (Object) null);
        }

        public final void a(NotificationType notificationType) {
            j.b(notificationType, "notificationType");
            h.a(h.f4687h, notificationType, null, 2, null);
        }

        public final void a(Context context) {
            Uri parse = Uri.parse("bazaar://downloads");
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(context, parse, (String) null, 4, (Object) null);
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(a.class), "downloadingTapIntent", "getDownloadingTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(a.class), "downloadCompleteTapIntent", "getDownloadCompleteTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl2);
        f4640a = new i[]{propertyReference1Impl, propertyReference1Impl2};
    }

    public a(Context context, AppDownloaderModel appDownloaderModel) {
        j.b(context, "context");
        j.b(appDownloaderModel, "appDownloadModel");
        this.f4644e = context;
        this.f4645f = appDownloaderModel;
    }

    public final PendingIntent b() {
        c cVar = this.f4643d;
        i iVar = f4640a[1];
        return (PendingIntent) cVar.getValue();
    }

    public final PendingIntent c() {
        c cVar = this.f4642c;
        i iVar = f4640a[0];
        return (PendingIntent) cVar.getValue();
    }

    public Notification a(String str, int i2) {
        j.b(str, "entityId");
        PendingIntent a2 = a(str);
        ArrayList arrayList = new ArrayList();
        if (a2 != null) {
            arrayList.add(new n.a(R.drawable.ic_pause, this.f4644e.getString(R.string.cancel), a2));
        }
        return h.f4687h.a(NotificationType.APP_DOWNLOAD_PROGRESS, str, this.f4645f.getAppName(), i2, (List<? extends n.a>) arrayList, (h.f.a.a<PendingIntent>) new AppDownloadNotification$showDownloading$2(this));
    }

    public void d() {
        h.f4687h.a(NotificationType.APP_DOWNLOAD_PROGRESS, this.f4645f.getPackageName());
        h.a(h.f4687h, this.f4645f.getPackageName(), this.f4645f.getAppName(), (Bitmap) null, NotificationType.APP_DOWNLOAD_COMPLETE, (List) null, 0, (String) null, (h.f.a.a) new AppDownloadNotification$showCompleted$1(this), 116, (Object) null);
    }

    public int a() {
        return NotificationType.APP_DOWNLOAD_PROGRESS.f();
    }

    public final PendingIntent a(String str) {
        Intent intent = new Intent(this.f4644e, NotificationActionReceiver.class);
        intent.setAction("notificationPause");
        intent.putExtra("entityId", str);
        intent.putExtra("notificationType", NotificationType.APP_DOWNLOAD_PROGRESS.ordinal());
        return PendingIntent.getBroadcast(this.f4644e, NotificationType.APP_DOWNLOAD_PROGRESS.f(), intent, 134217728);
    }
}
