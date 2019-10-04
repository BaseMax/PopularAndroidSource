package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.firebase.iid.d;
import com.google.firebase.iid.y;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;

public class FirebaseMessagingService extends d {

    /* renamed from: b  reason: collision with root package name */
    private static final Queue<String> f4095b = new ArrayDeque(10);

    static void a(Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (str != null && str.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    static boolean b(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00a9  */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x016a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void handleIntent(android.content.Intent r11) {
        /*
            r10 = this;
            java.lang.String r0 = r11.getAction()
            if (r0 != 0) goto L_0x0008
            java.lang.String r0 = ""
        L_0x0008:
            int r1 = r0.hashCode()
            r2 = 75300319(0x47cfddf, float:2.973903E-36)
            r3 = -1
            r4 = 0
            r5 = 1
            if (r1 == r2) goto L_0x0024
            r2 = 366519424(0x15d8a480, float:8.750124E-26)
            if (r1 == r2) goto L_0x001a
            goto L_0x002e
        L_0x001a:
            java.lang.String r1 = "com.google.android.c2dm.intent.RECEIVE"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x002e
            r0 = 0
            goto L_0x002f
        L_0x0024:
            java.lang.String r1 = "com.google.firebase.messaging.NOTIFICATION_DISMISS"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x002e
            r0 = 1
            goto L_0x002f
        L_0x002e:
            r0 = -1
        L_0x002f:
            if (r0 == 0) goto L_0x005b
            if (r0 == r5) goto L_0x004d
            java.lang.String r0 = "Unknown intent action: "
            java.lang.String r11 = r11.getAction()
            java.lang.String r11 = java.lang.String.valueOf(r11)
            int r1 = r11.length()
            if (r1 == 0) goto L_0x0047
            r0.concat(r11)
            return
        L_0x0047:
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0)
            goto L_0x005a
        L_0x004d:
            android.os.Bundle r0 = r11.getExtras()
            boolean r0 = b(r0)
            if (r0 == 0) goto L_0x005a
            com.google.firebase.messaging.e.zzh(r10, r11)
        L_0x005a:
            return
        L_0x005b:
            java.lang.String r0 = "google.message_id"
            java.lang.String r1 = r11.getStringExtra(r0)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            r6 = 3
            if (r2 == 0) goto L_0x006a
        L_0x0068:
            r2 = 0
            goto L_0x00a6
        L_0x006a:
            java.util.Queue<java.lang.String> r2 = f4095b
            boolean r2 = r2.contains(r1)
            if (r2 == 0) goto L_0x0091
            java.lang.String r2 = "FirebaseMessaging"
            boolean r2 = android.util.Log.isLoggable(r2, r6)
            if (r2 == 0) goto L_0x008f
            java.lang.String r2 = "Received duplicate message: "
            java.lang.String r7 = java.lang.String.valueOf(r1)
            int r8 = r7.length()
            if (r8 == 0) goto L_0x008a
            r2.concat(r7)
            goto L_0x008f
        L_0x008a:
            java.lang.String r7 = new java.lang.String
            r7.<init>(r2)
        L_0x008f:
            r2 = 1
            goto L_0x00a6
        L_0x0091:
            java.util.Queue<java.lang.String> r2 = f4095b
            int r2 = r2.size()
            r7 = 10
            if (r2 < r7) goto L_0x00a0
            java.util.Queue<java.lang.String> r2 = f4095b
            r2.remove()
        L_0x00a0:
            java.util.Queue<java.lang.String> r2 = f4095b
            r2.add(r1)
            goto L_0x0068
        L_0x00a6:
            r7 = 2
            if (r2 != 0) goto L_0x0164
            java.lang.String r2 = "message_type"
            java.lang.String r2 = r11.getStringExtra(r2)
            java.lang.String r8 = "gcm"
            if (r2 != 0) goto L_0x00b4
            r2 = r8
        L_0x00b4:
            int r9 = r2.hashCode()
            switch(r9) {
                case -2062414158: goto L_0x00d8;
                case 102161: goto L_0x00d0;
                case 814694033: goto L_0x00c6;
                case 814800675: goto L_0x00bc;
                default: goto L_0x00bb;
            }
        L_0x00bb:
            goto L_0x00e1
        L_0x00bc:
            java.lang.String r4 = "send_event"
            boolean r4 = r2.equals(r4)
            if (r4 == 0) goto L_0x00e1
            r3 = 2
            goto L_0x00e1
        L_0x00c6:
            java.lang.String r4 = "send_error"
            boolean r4 = r2.equals(r4)
            if (r4 == 0) goto L_0x00e1
            r3 = 3
            goto L_0x00e1
        L_0x00d0:
            boolean r8 = r2.equals(r8)
            if (r8 == 0) goto L_0x00e1
            r3 = 0
            goto L_0x00e1
        L_0x00d8:
            java.lang.String r4 = "deleted_messages"
            boolean r4 = r2.equals(r4)
            if (r4 == 0) goto L_0x00e1
            r3 = 1
        L_0x00e1:
            if (r3 == 0) goto L_0x0126
            if (r3 == r5) goto L_0x0122
            if (r3 == r7) goto L_0x011a
            if (r3 == r6) goto L_0x00ff
            java.lang.String r11 = "Received message with unknown type: "
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r3 = r2.length()
            if (r3 == 0) goto L_0x00f9
            r11.concat(r2)
            goto L_0x0164
        L_0x00f9:
            java.lang.String r2 = new java.lang.String
            r2.<init>(r11)
            goto L_0x0164
        L_0x00ff:
            java.lang.String r2 = r11.getStringExtra(r0)
            if (r2 != 0) goto L_0x010b
            java.lang.String r2 = "message_id"
            java.lang.String r2 = r11.getStringExtra(r2)
        L_0x010b:
            com.google.firebase.messaging.a r3 = new com.google.firebase.messaging.a
            java.lang.String r4 = "error"
            java.lang.String r11 = r11.getStringExtra(r4)
            r3.<init>(r11)
            r10.onSendError(r2, r3)
            goto L_0x0164
        L_0x011a:
            java.lang.String r11 = r11.getStringExtra(r0)
            r10.onMessageSent(r11)
            goto L_0x0164
        L_0x0122:
            r10.onDeletedMessages()
            goto L_0x0164
        L_0x0126:
            android.os.Bundle r2 = r11.getExtras()
            boolean r2 = b(r2)
            if (r2 == 0) goto L_0x0133
            com.google.firebase.messaging.e.zzf(r10, r11)
        L_0x0133:
            android.os.Bundle r2 = r11.getExtras()
            if (r2 != 0) goto L_0x013e
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
        L_0x013e:
            java.lang.String r3 = "androidx.contentpager.content.wakelockid"
            r2.remove(r3)
            boolean r3 = com.google.firebase.messaging.b.a((android.os.Bundle) r2)
            if (r3 == 0) goto L_0x015c
            com.google.firebase.messaging.b r3 = com.google.firebase.messaging.b.a((android.content.Context) r10)
            boolean r3 = r3.c((android.os.Bundle) r2)
            if (r3 != 0) goto L_0x0164
            boolean r3 = b(r2)
            if (r3 == 0) goto L_0x015c
            com.google.firebase.messaging.e.zzi(r10, r11)
        L_0x015c:
            com.google.firebase.messaging.RemoteMessage r11 = new com.google.firebase.messaging.RemoteMessage
            r11.<init>(r2)
            r10.onMessageReceived(r11)
        L_0x0164:
            boolean r11 = android.text.TextUtils.isEmpty(r1)
            if (r11 != 0) goto L_0x0179
            android.os.Bundle r11 = new android.os.Bundle
            r11.<init>()
            r11.putString(r0, r1)
            com.google.firebase.iid.k r0 = com.google.firebase.iid.k.zzev(r10)
            r0.zzh(r7, r11)
        L_0x0179:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.handleIntent(android.content.Intent):void");
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }

    public final Intent zzp(Intent intent) {
        return y.zzcjk().zzcjl();
    }

    public final boolean zzq(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
            }
        }
        if (b(intent.getExtras())) {
            e.zzg(this, intent);
        }
        return true;
    }
}
