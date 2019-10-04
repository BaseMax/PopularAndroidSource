package com.webengage.sdk.android;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;

abstract class as extends Service {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public b f5515a = null;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f5516b = null;
    private Messenger c = null;

    class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            Logger.d("WebEngage", "YAIS: Received bound message service: " + as.this.getClass().getSimpleName() + ", start-id: " + message.arg1 + ", thread-id: " + Thread.currentThread().getId());
            try {
                Message obtain = Message.obtain();
                obtain.copyFrom(message);
                obtain.what = 0;
                as.this.f5515a.sendMessage(obtain);
            } catch (Exception e) {
                Logger.e("WebEngage", "YAIS: Exception while sending message from Messenger to Service: " + e.toString(), e);
            }
        }
    }

    class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            as.this.a((Intent) message.obj);
            int i = message.what;
            if (i != 0) {
                if (i == 1) {
                    as.this.stopSelf(message.arg1);
                }
            } else if (message.replyTo != null) {
                try {
                    Message obtain = Message.obtain();
                    obtain.what = 2;
                    obtain.arg1 = message.arg1;
                    message.replyTo.send(obtain);
                } catch (Exception e) {
                    Logger.e("WebEngage", "YAIS: Exception while replying to remote service", e);
                }
            }
        }
    }

    as() {
    }

    /* access modifiers changed from: protected */
    public abstract void a(Intent intent);

    public IBinder onBind(Intent intent) {
        return this.c.getBinder();
    }

    public void onCreate() {
        super.onCreate();
        this.f5516b = new HandlerThread(getClass().getSimpleName());
        this.f5516b.start();
        this.f5515a = new b(this.f5516b.getLooper());
        this.c = new Messenger(new a(Looper.getMainLooper()));
    }

    public void onDestroy() {
        super.onDestroy();
        this.f5516b.quit();
    }

    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Message obtain = Message.obtain();
        obtain.arg1 = i2;
        obtain.obj = intent;
        obtain.what = 1;
        this.f5515a.sendMessage(obtain);
        return 2;
    }

    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }
}
