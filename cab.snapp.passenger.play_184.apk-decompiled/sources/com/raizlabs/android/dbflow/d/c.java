package com.raizlabs.android.dbflow.d;

import android.os.Looper;
import android.os.Process;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.structure.b.a.e;
import com.raizlabs.android.dbflow.structure.b.a.g;
import com.raizlabs.android.dbflow.structure.b.i;
import java.util.ArrayList;
import java.util.Collection;

public final class c extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private int f5125a = 50;

    /* renamed from: b  reason: collision with root package name */
    private long f5126b = IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION;
    private final ArrayList<Object> c;
    private boolean d = false;
    /* access modifiers changed from: private */
    public g.b e;
    /* access modifiers changed from: private */
    public g.c f;
    private Runnable g;
    private com.raizlabs.android.dbflow.config.c h;
    private final e.c i = new e.c() {
        public final void processModel(Object obj, i iVar) {
            if (obj instanceof com.raizlabs.android.dbflow.structure.e) {
                ((com.raizlabs.android.dbflow.structure.e) obj).save();
                return;
            }
            if (obj != null) {
                FlowManager.getModelAdapter(obj.getClass()).save(obj);
            }
        }
    };
    private final g.c j = new g.c() {
        public final void onSuccess(g gVar) {
            if (c.this.f != null) {
                c.this.f.onSuccess(gVar);
            }
        }
    };
    private final g.b k = new g.b() {
        public final void onError(g gVar, Throwable th) {
            if (c.this.e != null) {
                c.this.e.onError(gVar, th);
            }
        }
    };

    c(com.raizlabs.android.dbflow.config.c cVar) {
        super("DBBatchSaveQueue");
        this.h = cVar;
        this.c = new ArrayList<>();
    }

    public final void setModelSaveSize(int i2) {
        this.f5125a = i2;
    }

    public final void setModelSaveCheckTime(long j2) {
        this.f5126b = j2;
    }

    public final void setErrorListener(g.b bVar) {
        this.e = bVar;
    }

    public final void setSuccessListener(g.c cVar) {
        this.f = cVar;
    }

    public final void setEmptyTransactionListener(Runnable runnable) {
        this.g = runnable;
    }

    public final void run() {
        ArrayList arrayList;
        super.run();
        Looper.prepare();
        Process.setThreadPriority(10);
        do {
            synchronized (this.c) {
                arrayList = new ArrayList(this.c);
                this.c.clear();
            }
            if (arrayList.size() > 0) {
                this.h.beginTransactionAsync(new e.a(this.i).addAll(arrayList).build()).success(this.j).error(this.k).build().execute();
            } else {
                Runnable runnable = this.g;
                if (runnable != null) {
                    runnable.run();
                }
            }
            try {
                Thread.sleep(this.f5126b);
            } catch (InterruptedException unused) {
                FlowLog.log(FlowLog.Level.I, "DBRequestQueue Batch interrupted to start saving");
            }
        } while (!this.d);
    }

    public final void purgeQueue() {
        interrupt();
    }

    public final void add(Object obj) {
        synchronized (this.c) {
            this.c.add(obj);
            if (this.c.size() > this.f5125a) {
                interrupt();
            }
        }
    }

    public final void addAll(Collection<Object> collection) {
        synchronized (this.c) {
            this.c.addAll(collection);
            if (this.c.size() > this.f5125a) {
                interrupt();
            }
        }
    }

    public final void addAll2(Collection<?> collection) {
        synchronized (this.c) {
            this.c.addAll(collection);
            if (this.c.size() > this.f5125a) {
                interrupt();
            }
        }
    }

    public final void remove(Object obj) {
        synchronized (this.c) {
            this.c.remove(obj);
        }
    }

    public final void removeAll(Collection<Object> collection) {
        synchronized (this.c) {
            this.c.removeAll(collection);
        }
    }

    public final void removeAll2(Collection<?> collection) {
        synchronized (this.c) {
            this.c.removeAll(collection);
        }
    }

    public final void quit() {
        this.d = true;
    }
}
