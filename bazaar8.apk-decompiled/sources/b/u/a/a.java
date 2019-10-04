package b.u.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import b.i.a.m;
import b.i.a.n;
import b.u.i;
import b.u.j;
import b.u.k;

/* compiled from: NotificationCompat */
public class a extends n.e {

    /* renamed from: e  reason: collision with root package name */
    public int[] f3219e = null;

    /* renamed from: f  reason: collision with root package name */
    public MediaSessionCompat.Token f3220f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3221g;

    /* renamed from: h  reason: collision with root package name */
    public PendingIntent f3222h;

    public a a(int... iArr) {
        this.f3219e = iArr;
        return this;
    }

    public RemoteViews b() {
        int i2;
        RemoteViews a2 = a(false, c(), true);
        int size = this.f2553a.f2542b.size();
        int[] iArr = this.f3219e;
        if (iArr == null) {
            i2 = 0;
        } else {
            i2 = Math.min(iArr.length, 3);
        }
        a2.removeAllViews(i.media_actions);
        if (i2 > 0) {
            int i3 = 0;
            while (i3 < i2) {
                if (i3 < size) {
                    a2.addView(i.media_actions, a(this.f2553a.f2542b.get(this.f3219e[i3])));
                    i3++;
                } else {
                    throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[]{Integer.valueOf(i3), Integer.valueOf(size - 1)}));
                }
            }
        }
        if (this.f3221g) {
            a2.setViewVisibility(i.end_padder, 8);
            a2.setViewVisibility(i.cancel_action, 0);
            a2.setOnClickPendingIntent(i.cancel_action, this.f3222h);
            a2.setInt(i.cancel_action, "setAlpha", this.f2553a.f2541a.getResources().getInteger(j.cancel_button_image_alpha));
        } else {
            a2.setViewVisibility(i.end_padder, 0);
            a2.setViewVisibility(i.cancel_action, 8);
        }
        return a2;
    }

    public RemoteViews c(m mVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return b();
    }

    public a a(MediaSessionCompat.Token token) {
        this.f3220f = token;
        return this;
    }

    public void a(m mVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            Notification.Builder a2 = mVar.a();
            Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
            a(mediaStyle);
            a2.setStyle(mediaStyle);
        } else if (this.f3221g) {
            mVar.a().setOngoing(true);
        }
    }

    public int c() {
        return k.notification_template_media;
    }

    public Notification.MediaStyle a(Notification.MediaStyle mediaStyle) {
        int[] iArr = this.f3219e;
        if (iArr != null) {
            mediaStyle.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.f3220f;
        if (token != null) {
            mediaStyle.setMediaSession((MediaSession.Token) token.c());
        }
        return mediaStyle;
    }

    public final RemoteViews a(n.a aVar) {
        boolean z = aVar.a() == null;
        RemoteViews remoteViews = new RemoteViews(this.f2553a.f2541a.getPackageName(), k.notification_media_action);
        remoteViews.setImageViewResource(i.action0, aVar.e());
        if (!z) {
            remoteViews.setOnClickPendingIntent(i.action0, aVar.a());
        }
        if (Build.VERSION.SDK_INT >= 15) {
            remoteViews.setContentDescription(i.action0, aVar.i());
        }
        return remoteViews;
    }

    public RemoteViews a() {
        int min = Math.min(this.f2553a.f2542b.size(), 5);
        RemoteViews a2 = a(false, a(min), false);
        a2.removeAllViews(i.media_actions);
        if (min > 0) {
            for (int i2 = 0; i2 < min; i2++) {
                a2.addView(i.media_actions, a(this.f2553a.f2542b.get(i2)));
            }
        }
        if (this.f3221g) {
            a2.setViewVisibility(i.cancel_action, 0);
            a2.setInt(i.cancel_action, "setAlpha", this.f2553a.f2541a.getResources().getInteger(j.cancel_button_image_alpha));
            a2.setOnClickPendingIntent(i.cancel_action, this.f3222h);
        } else {
            a2.setViewVisibility(i.cancel_action, 8);
        }
        return a2;
    }

    public RemoteViews b(m mVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return null;
        }
        return a();
    }

    public int a(int i2) {
        return i2 <= 3 ? k.notification_template_big_media_narrow : k.notification_template_big_media;
    }
}
