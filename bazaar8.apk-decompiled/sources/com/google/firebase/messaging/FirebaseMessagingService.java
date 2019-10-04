package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import c.e.c.d.C1002w;
import c.e.c.d.E;
import c.e.c.g.b;
import java.util.ArrayDeque;
import java.util.Queue;

public class FirebaseMessagingService extends E {

    /* renamed from: f  reason: collision with root package name */
    public static final Queue<String> f13522f = new ArrayDeque(10);

    public void a() {
    }

    public void a(RemoteMessage remoteMessage) {
    }

    public void a(String str) {
    }

    public void a(String str, Exception exc) {
    }

    public final Intent b(Intent intent) {
        return C1002w.a().b();
    }

    public void b(String str) {
    }

    public final boolean c(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (b.e(intent)) {
            b.c(intent);
        }
        return true;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00f3, code lost:
        if (r1.equals("gcm") != false) goto L_0x0101;
     */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00c7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(android.content.Intent r12) {
        /*
            r11 = this;
            java.lang.String r0 = r12.getAction()
            java.lang.String r1 = "com.google.android.c2dm.intent.RECEIVE"
            boolean r1 = r1.equals(r0)
            java.lang.String r2 = "FirebaseMessaging"
            if (r1 != 0) goto L_0x0059
            java.lang.String r1 = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x0017
            goto L_0x0059
        L_0x0017:
            java.lang.String r1 = "com.google.firebase.messaging.NOTIFICATION_DISMISS"
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x0029
            boolean r0 = c.e.c.g.b.e(r12)
            if (r0 == 0) goto L_0x0058
            c.e.c.g.b.a(r12)
            return
        L_0x0029:
            java.lang.String r1 = "com.google.firebase.messaging.NEW_TOKEN"
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L_0x003b
            java.lang.String r0 = "token"
            java.lang.String r12 = r12.getStringExtra(r0)
            r11.b((java.lang.String) r12)
            return
        L_0x003b:
            java.lang.String r0 = "Unknown intent action: "
            java.lang.String r12 = r12.getAction()
            java.lang.String r12 = java.lang.String.valueOf(r12)
            int r1 = r12.length()
            if (r1 == 0) goto L_0x0050
            java.lang.String r12 = r0.concat(r12)
            goto L_0x0055
        L_0x0050:
            java.lang.String r12 = new java.lang.String
            r12.<init>(r0)
        L_0x0055:
            android.util.Log.d(r2, r12)
        L_0x0058:
            return
        L_0x0059:
            java.lang.String r0 = "google.message_id"
            java.lang.String r1 = r12.getStringExtra(r0)
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            r4 = 2
            if (r3 == 0) goto L_0x006c
            r3 = 0
            c.e.a.b.j.g r3 = c.e.a.b.j.j.a(r3)
            goto L_0x007c
        L_0x006c:
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            r3.putString(r0, r1)
            c.e.c.d.e r5 = c.e.c.d.C0985e.a((android.content.Context) r11)
            c.e.a.b.j.g r3 = r5.a(r4, r3)
        L_0x007c:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            r6 = 1
            r7 = 3
            r8 = 0
            if (r5 == 0) goto L_0x0087
        L_0x0085:
            r1 = 0
            goto L_0x00c5
        L_0x0087:
            java.util.Queue<java.lang.String> r5 = f13522f
            boolean r5 = r5.contains(r1)
            if (r5 == 0) goto L_0x00b0
            boolean r5 = android.util.Log.isLoggable(r2, r7)
            if (r5 == 0) goto L_0x00ae
            java.lang.String r5 = "Received duplicate message: "
            java.lang.String r1 = java.lang.String.valueOf(r1)
            int r9 = r1.length()
            if (r9 == 0) goto L_0x00a6
            java.lang.String r1 = r5.concat(r1)
            goto L_0x00ab
        L_0x00a6:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r5)
        L_0x00ab:
            android.util.Log.d(r2, r1)
        L_0x00ae:
            r1 = 1
            goto L_0x00c5
        L_0x00b0:
            java.util.Queue<java.lang.String> r5 = f13522f
            int r5 = r5.size()
            r9 = 10
            if (r5 < r9) goto L_0x00bf
            java.util.Queue<java.lang.String> r5 = f13522f
            r5.remove()
        L_0x00bf:
            java.util.Queue<java.lang.String> r5 = f13522f
            r5.add(r1)
            goto L_0x0085
        L_0x00c5:
            if (r1 != 0) goto L_0x0198
            java.lang.String r1 = "message_type"
            java.lang.String r1 = r12.getStringExtra(r1)
            java.lang.String r5 = "gcm"
            if (r1 != 0) goto L_0x00d2
            r1 = r5
        L_0x00d2:
            r9 = -1
            int r10 = r1.hashCode()
            switch(r10) {
                case -2062414158: goto L_0x00f6;
                case 102161: goto L_0x00ef;
                case 814694033: goto L_0x00e5;
                case 814800675: goto L_0x00db;
                default: goto L_0x00da;
            }
        L_0x00da:
            goto L_0x0100
        L_0x00db:
            java.lang.String r5 = "send_event"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0100
            r8 = 2
            goto L_0x0101
        L_0x00e5:
            java.lang.String r5 = "send_error"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0100
            r8 = 3
            goto L_0x0101
        L_0x00ef:
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0100
            goto L_0x0101
        L_0x00f6:
            java.lang.String r5 = "deleted_messages"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L_0x0100
            r8 = 1
            goto L_0x0101
        L_0x0100:
            r8 = -1
        L_0x0101:
            if (r8 == 0) goto L_0x014c
            if (r8 == r6) goto L_0x0148
            if (r8 == r4) goto L_0x0140
            if (r8 == r7) goto L_0x0125
            java.lang.String r12 = "Received message with unknown type: "
            java.lang.String r0 = java.lang.String.valueOf(r1)
            int r1 = r0.length()
            if (r1 == 0) goto L_0x011a
            java.lang.String r12 = r12.concat(r0)
            goto L_0x0120
        L_0x011a:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r12)
            r12 = r0
        L_0x0120:
            android.util.Log.w(r2, r12)
            goto L_0x0198
        L_0x0125:
            java.lang.String r0 = r12.getStringExtra(r0)
            if (r0 != 0) goto L_0x0131
            java.lang.String r0 = "message_id"
            java.lang.String r0 = r12.getStringExtra(r0)
        L_0x0131:
            com.google.firebase.messaging.SendException r1 = new com.google.firebase.messaging.SendException
            java.lang.String r4 = "error"
            java.lang.String r12 = r12.getStringExtra(r4)
            r1.<init>(r12)
            r11.a(r0, r1)
            goto L_0x0198
        L_0x0140:
            java.lang.String r12 = r12.getStringExtra(r0)
            r11.a((java.lang.String) r12)
            goto L_0x0198
        L_0x0148:
            r11.a()
            goto L_0x0198
        L_0x014c:
            boolean r0 = c.e.c.g.b.e(r12)
            if (r0 == 0) goto L_0x0155
            c.e.c.g.b.d(r12)
        L_0x0155:
            android.os.Bundle r0 = r12.getExtras()
            if (r0 != 0) goto L_0x0160
            android.os.Bundle r0 = new android.os.Bundle
            r0.<init>()
        L_0x0160:
            java.lang.String r1 = "androidx.contentpager.content.wakelockid"
            r0.remove(r1)
            boolean r1 = c.e.c.g.c.c((android.os.Bundle) r0)
            if (r1 == 0) goto L_0x0190
            java.util.concurrent.ExecutorService r1 = java.util.concurrent.Executors.newSingleThreadExecutor()
            c.e.c.g.d r4 = new c.e.c.g.d
            r4.<init>(r11, r0, r1)
            boolean r4 = r4.a()     // Catch:{ all -> 0x018b }
            if (r4 == 0) goto L_0x017e
            r1.shutdown()
            goto L_0x0198
        L_0x017e:
            r1.shutdown()
            boolean r1 = c.e.c.g.b.e(r12)
            if (r1 == 0) goto L_0x0190
            c.e.c.g.b.b(r12)
            goto L_0x0190
        L_0x018b:
            r12 = move-exception
            r1.shutdown()
            throw r12
        L_0x0190:
            com.google.firebase.messaging.RemoteMessage r12 = new com.google.firebase.messaging.RemoteMessage
            r12.<init>(r0)
            r11.a((com.google.firebase.messaging.RemoteMessage) r12)
        L_0x0198:
            r0 = 1
            java.util.concurrent.TimeUnit r12 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ ExecutionException -> 0x01a4, InterruptedException -> 0x01a2, TimeoutException -> 0x01a0 }
            c.e.a.b.j.j.a(r3, r0, r12)     // Catch:{ ExecutionException -> 0x01a4, InterruptedException -> 0x01a2, TimeoutException -> 0x01a0 }
            return
        L_0x01a0:
            r12 = move-exception
            goto L_0x01a5
        L_0x01a2:
            r12 = move-exception
            goto L_0x01a5
        L_0x01a4:
            r12 = move-exception
        L_0x01a5:
            java.lang.String r12 = java.lang.String.valueOf(r12)
            java.lang.String r0 = java.lang.String.valueOf(r12)
            int r0 = r0.length()
            int r0 = r0 + 20
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "Message ack failed: "
            r1.append(r0)
            r1.append(r12)
            java.lang.String r12 = r1.toString()
            android.util.Log.w(r2, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.d(android.content.Intent):void");
    }
}
