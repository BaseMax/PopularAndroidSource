package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ScheduledThreadPoolExecutor;

class at implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private ScheduledThreadPoolExecutor f5519a = new ScheduledThreadPoolExecutor(1);

    /* renamed from: b  reason: collision with root package name */
    private Messenger f5520b = null;
    /* access modifiers changed from: private */
    public Context c = null;
    /* access modifiers changed from: private */
    public volatile boolean d = false;
    private volatile boolean e = false;
    private Queue<ar> f = null;
    private Intent g = null;
    private int h = 0;
    /* access modifiers changed from: private */
    public int i = 0;
    /* access modifiers changed from: private */
    public Map<Integer, ar> j = null;
    /* access modifiers changed from: private */
    public String k = null;
    /* access modifiers changed from: private */
    public final Object l = new Object();
    private final a m = new a(Looper.getMainLooper());
    private Messenger n = new Messenger(this.m);

    class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
                return;
            }
            synchronized (at.this.l) {
                int i = message.arg1;
                Logger.d("WebEngage", "YAIS: processing complete, service: " + at.this.k + ", startId: " + i + ", Thread id: " + getLooper().getThread().getId());
                try {
                    if (at.this.j.get(Integer.valueOf(i)) != null) {
                        ((ar) at.this.j.get(Integer.valueOf(i))).b();
                        at.this.j.remove(Integer.valueOf(i));
                    }
                    if (i == at.this.i) {
                        Logger.d("WebEngage", "YAIS: disconnecting from service: " + at.this.k);
                        at.this.c.unbindService(at.this);
                        boolean unused = at.this.d = false;
                    }
                } catch (Exception e) {
                    Logger.e("WebEngage", "YAIS: Some exception occurred while handling incoming messages from service: " + at.this.k, e);
                }
            }
        }
    }

    private at() {
    }

    public at(Context context, Intent intent) {
        this.c = context.getApplicationContext();
        this.f = new ArrayDeque();
        this.g = intent;
        this.j = new HashMap();
        this.k = intent.getComponent().getClassName();
    }

    private synchronized void a() {
        while (!this.f.isEmpty()) {
            if (this.d && this.f5520b != null && this.f5520b.getBinder().isBinderAlive()) {
                a(this.f.poll());
            } else if (!this.e) {
                this.e = true;
                try {
                    this.c.bindService(this.g, this, 1);
                    return;
                } catch (Exception e2) {
                    Logger.e("WebEngage", "YAIS: Exception while binding to service: " + this.g, e2);
                    this.e = false;
                    b();
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void a(ar arVar) {
        synchronized (this.l) {
            Logger.d("WebEngage", "YAIS: sending message to service: " + this.k + ", startId: " + this.h);
            Message obtain = Message.obtain();
            obtain.obj = arVar.a();
            obtain.arg1 = this.h;
            obtain.replyTo = this.n;
            try {
                this.f5520b.send(obtain);
                this.j.put(Integer.valueOf(this.h), arVar);
                this.i = this.h;
                this.h++;
            } catch (Exception e2) {
                Logger.e("WebEngage", "YAIS: Exception while sending message to service: " + arVar.a(), e2);
            }
        }
    }

    private synchronized void b() {
        while (!this.f.isEmpty()) {
            this.f.poll().b();
        }
    }

    public synchronized void a(Intent intent, BroadcastReceiver.PendingResult pendingResult) {
        Logger.d("WebEngage", "YAIS: Adding task to service: " + this.k);
        this.f.add(new ar(intent, this.f5519a, pendingResult));
        a();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.l) {
            if (iBinder != null) {
                Logger.d("WebEngage", "YAIS: service connected: " + this.k);
                this.f5520b = new Messenger(iBinder);
                this.d = true;
                this.e = false;
                a();
            } else {
                b();
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.l) {
            Logger.d("WebEngage", "YAIS: service disconnected: " + this.k);
            this.d = false;
            this.f5520b = null;
            a();
        }
    }
}
