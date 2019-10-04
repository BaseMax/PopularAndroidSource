package com.farsitel.bazaar.app.fcm;

import android.content.Context;
import c.c.a.b.f.h;
import c.c.a.c.c.a;
import c.c.a.d.a.a;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import h.f.b.j;
import java.util.Map;

/* compiled from: BazaarFirebaseMessagingService.kt */
public final class BazaarFirebaseMessagingService extends FirebaseMessagingService {
    public void a(RemoteMessage remoteMessage) {
        j.b(remoteMessage, "remoteMessage");
        super.a(remoteMessage);
        a aVar = a.f4699b;
        a.a(aVar, "new remote message received, from: " + remoteMessage.y() + ", payload: " + remoteMessage.x(), null, null, 6, null);
        Map<String, String> x = remoteMessage.x();
        j.a((Object) x, "remoteMessage.data");
        if (!x.isEmpty()) {
            Map<String, String> x2 = remoteMessage.x();
            j.a((Object) x2, "remoteMessage.data");
            FCMMessage fCMMessage = new FCMMessage(x2);
            if (fCMMessage.k()) {
                h.f4687h.a(fCMMessage);
            }
        }
    }

    public void b(String str) {
        j.b(str, "token");
        super.b(str);
        a aVar = a.f4699b;
        a.a(aVar, "fcm token refreshed " + str, null, null, 6, null);
        a.C0074a aVar2 = c.c.a.d.a.a.f4744b;
        Context applicationContext = getApplicationContext();
        j.a((Object) applicationContext, "applicationContext");
        aVar2.a(applicationContext).e(str);
    }
}
