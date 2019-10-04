package c.c.a.b.f.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import b.i.a.n;
import c.c.a.b.f.h;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.app.notification.NotificationActionReceiver;
import com.farsitel.bazaar.app.notification.NotificationType;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: VideoDownloadNotification.kt */
public final class f extends b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4665a;

    /* renamed from: b  reason: collision with root package name */
    public static final a f4666b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final c f4667c = d.a(new VideoDownloadNotification$downloadingTapIntent$2(this));

    /* renamed from: d  reason: collision with root package name */
    public final c f4668d = d.a(new VideoDownloadNotification$downloadCompleteTapIntent$2(this));

    /* renamed from: e  reason: collision with root package name */
    public final Context f4669e;

    /* renamed from: f  reason: collision with root package name */
    public final VideoDownloaderModel f4670f;

    /* compiled from: VideoDownloadNotification.kt */
    public static final class a {
        public a() {
        }

        public final void a(Context context, NotificationType notificationType, String str) {
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

        public final void b(Context context, NotificationType notificationType, String str) {
            j.b(notificationType, "notificationType");
            if (context == null) {
                return;
            }
            if (!h.f4687h.b(notificationType)) {
                f.f4666b.a(context);
            } else if (str != null) {
                f.f4666b.a(context, str);
            }
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final void a(NotificationType notificationType) {
            j.b(notificationType, "notificationType");
            h.a(h.f4687h, notificationType, null, 2, null);
        }

        public final void a(Context context) {
            Uri parse = Uri.parse("bazaar://download_videos");
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(context, parse, (String) null, 4, (Object) null);
        }

        public final void a(Context context, String str) {
            Uri parse = Uri.parse(str);
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(context, parse, (String) null, 4, (Object) null);
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(f.class), "downloadingTapIntent", "getDownloadingTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(f.class), "downloadCompleteTapIntent", "getDownloadCompleteTapIntent()Landroid/app/PendingIntent;");
        k.a((PropertyReference1) propertyReference1Impl2);
        f4665a = new i[]{propertyReference1Impl, propertyReference1Impl2};
    }

    public f(Context context, VideoDownloaderModel videoDownloaderModel) {
        j.b(context, "context");
        j.b(videoDownloaderModel, "videoDownloaderModel");
        this.f4669e = context;
        this.f4670f = videoDownloaderModel;
    }

    public final PendingIntent b() {
        c cVar = this.f4668d;
        i iVar = f4665a[1];
        return (PendingIntent) cVar.getValue();
    }

    public final PendingIntent c() {
        c cVar = this.f4667c;
        i iVar = f4665a[0];
        return (PendingIntent) cVar.getValue();
    }

    public Notification a(String str, int i2) {
        j.b(str, "entityId");
        PendingIntent a2 = a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new n.a(R.drawable.ic_pause, this.f4669e.getString(R.string.cancel), a2));
        return h.f4687h.a(NotificationType.VIDEO_DOWNLOAD_PROGRESS, str, this.f4670f.getVideoName(), i2, (List<? extends n.a>) arrayList, (h.f.a.a<PendingIntent>) new VideoDownloadNotification$showDownloading$1(this));
    }

    public void d() {
        h.f4687h.a(NotificationType.VIDEO_DOWNLOAD_PROGRESS, this.f4670f.getVideoId());
        h.a(h.f4687h, this.f4670f.getVideoId(), this.f4670f.getVideoName(), (Bitmap) null, NotificationType.VIDEO_DOWNLOAD_COMPLETE, (List) null, 0, (String) null, (h.f.a.a) new VideoDownloadNotification$showCompleted$1(this), 116, (Object) null);
    }

    public int a() {
        return NotificationType.VIDEO_DOWNLOAD_PROGRESS.f();
    }

    public final PendingIntent a(String str) {
        Intent intent = new Intent(this.f4669e, NotificationActionReceiver.class);
        intent.setAction("notificationPause");
        intent.putExtra("entityId", str);
        intent.putExtra("notificationType", NotificationType.VIDEO_DOWNLOAD_PROGRESS.ordinal());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f4669e, NotificationType.VIDEO_DOWNLOAD_PROGRESS.f(), intent, 134217728);
        j.a((Object) broadcast, "PendingIntent.getBroadca…_UPDATE_CURRENT\n        )");
        return broadcast;
    }
}
