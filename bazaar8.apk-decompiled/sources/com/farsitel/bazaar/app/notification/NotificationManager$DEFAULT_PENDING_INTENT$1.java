package com.farsitel.bazaar.app.notification;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import c.c.a.b.f;
import c.c.a.b.f.h;
import h.f.a.a;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: NotificationManager.kt */
final class NotificationManager$DEFAULT_PENDING_INTENT$1 extends Lambda implements a<PendingIntent> {

    /* renamed from: a  reason: collision with root package name */
    public static final NotificationManager$DEFAULT_PENDING_INTENT$1 f12138a = new NotificationManager$DEFAULT_PENDING_INTENT$1();

    public NotificationManager$DEFAULT_PENDING_INTENT$1() {
        super(0);
    }

    public final PendingIntent invoke() {
        Context a2 = h.f4687h.b();
        Uri parse = Uri.parse("bazaar://home");
        j.a((Object) parse, "Uri.parse(this)");
        return f.a(a2, parse, (Bundle) null, 4, (Object) null);
    }
}
