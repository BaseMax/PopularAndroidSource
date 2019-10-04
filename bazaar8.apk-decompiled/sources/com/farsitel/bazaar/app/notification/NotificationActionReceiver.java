package com.farsitel.bazaar.app.notification;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import c.c.a.b.d.b;
import c.c.a.b.f.a.a;
import c.c.a.b.f.a.d;
import c.c.a.b.f.h;
import d.a.e;
import h.f.b.f;
import h.f.b.j;

/* compiled from: NotificationActionReceiver.kt */
public final class NotificationActionReceiver extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f12136a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public b f12137b;

    /* compiled from: NotificationActionReceiver.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public void onReceive(Context context, Intent intent) {
        super.onReceive(context, intent);
        if (intent != null) {
            String action = intent.getAction();
            if (action != null) {
                Bundle extras = intent.getExtras();
                int hashCode = action.hashCode();
                String str = null;
                if (hashCode != -1586329653) {
                    if (hashCode != 1901318332) {
                        if (hashCode == 2023251574 && action.equals("notificationDelete")) {
                            int i2 = -1;
                            if (extras != null) {
                                i2 = extras.getInt("notificationId", -1);
                            }
                            h.f4687h.a(i2);
                        }
                    } else if (action.equals("notificationClicked") && extras != null) {
                        NotificationType notificationType = NotificationType.values()[extras.getInt("notificationType")];
                        int i3 = c.c.a.b.f.a.f4639a[notificationType.ordinal()];
                        if (i3 == 1) {
                            c.c.a.b.f.a.a.f4641b.a(notificationType);
                            a.C0069a aVar = c.c.a.b.f.a.a.f4641b;
                            b bVar = this.f12137b;
                            if (bVar != null) {
                                aVar.a(context, notificationType, bVar);
                            } else {
                                j.c("appManager");
                                throw null;
                            }
                        } else if (i3 == 2) {
                            a.C0069a aVar2 = c.c.a.b.f.a.a.f4641b;
                            b bVar2 = this.f12137b;
                            if (bVar2 != null) {
                                aVar2.a(context, notificationType, bVar2);
                            } else {
                                j.c("appManager");
                                throw null;
                            }
                        } else if (i3 == 3) {
                            c.c.a.b.f.a.f.f4666b.b(context, notificationType, extras.getString("shareLink"));
                        } else if (i3 == 4) {
                            c.c.a.b.f.a.f.f4666b.a(notificationType);
                            c.c.a.b.f.a.f.f4666b.b(context, notificationType, extras.getString("shareLink"));
                        } else if (i3 == 5) {
                            d.f4653b.a(notificationType);
                            d.f4653b.a(context, extras.getBundle("upgradableItems"));
                        }
                    }
                } else if (action.equals("notificationPause")) {
                    if (extras != null) {
                        str = extras.getString("entityId");
                    }
                    if (extras != null) {
                        int i4 = extras.getInt("notificationType");
                        if (i4 == NotificationType.APP_DOWNLOAD_PROGRESS.ordinal()) {
                            c.c.a.b.f.a.a.f4641b.a(context, NotificationType.APP_DOWNLOAD_PROGRESS);
                        } else if (i4 == NotificationType.VIDEO_DOWNLOAD_PROGRESS.ordinal()) {
                            c.c.a.b.f.a.f.f4666b.a(context, NotificationType.VIDEO_DOWNLOAD_PROGRESS, str);
                        }
                    }
                }
            }
        }
    }
}
