package com.raizlabs.android.dbflow.d;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.sql.language.s;
import com.raizlabs.android.dbflow.sql.language.t;
import com.raizlabs.android.dbflow.sql.language.w;
import com.raizlabs.android.dbflow.structure.BaseModel;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;

public class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f5130a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private static boolean f5131b = false;
    private final Set<b> c = new CopyOnWriteArraySet();
    private final Set<g> d = new CopyOnWriteArraySet();
    private final Map<String, Class<?>> e = new HashMap();
    private final Set<Uri> f = new HashSet();
    private final Set<Uri> g = new HashSet();
    private boolean h = false;
    public boolean isInTransaction = false;

    public interface a extends b, g {
    }

    public interface b {
        void onModelStateChanged(Class<?> cls, BaseModel.Action action, w[] wVarArr);
    }

    public static boolean shouldNotify() {
        return f5131b || f5130a.get() > 0;
    }

    public static void clearRegisteredObserverCount() {
        f5130a.set(0);
    }

    public static void setShouldForceNotify(boolean z) {
        f5131b = z;
    }

    public d() {
        super(null);
    }

    public d(Handler handler) {
        super(handler);
    }

    public void setNotifyAllUris(boolean z) {
        this.h = z;
    }

    public void beginTransaction() {
        if (!this.isInTransaction) {
            this.isInTransaction = true;
        }
    }

    public void endTransactionAndNotify() {
        if (this.isInTransaction) {
            this.isInTransaction = false;
            if (Build.VERSION.SDK_INT < 16) {
                onChange(true);
                return;
            }
            synchronized (this.f) {
                for (Uri a2 : this.f) {
                    a(a2, true);
                }
                this.f.clear();
            }
            synchronized (this.g) {
                for (Uri next : this.g) {
                    for (g onTableChanged : this.d) {
                        onTableChanged.onTableChanged(this.e.get(next.getAuthority()), BaseModel.Action.valueOf(next.getFragment()));
                    }
                }
                this.g.clear();
            }
        }
    }

    public void addModelChangeListener(b bVar) {
        this.c.add(bVar);
    }

    public void removeModelChangeListener(b bVar) {
        this.c.remove(bVar);
    }

    public void addOnTableChangedListener(g gVar) {
        this.d.add(gVar);
    }

    public void removeTableChangedListener(g gVar) {
        this.d.remove(gVar);
    }

    public void addContentChangeListener(a aVar) {
        this.c.add(aVar);
        this.d.add(aVar);
    }

    public void removeContentChangeListener(a aVar) {
        this.c.remove(aVar);
        this.d.remove(aVar);
    }

    public void registerForContentChanges(Context context, Class<?> cls) {
        registerForContentChanges(context.getContentResolver(), cls);
    }

    public void registerForContentChanges(ContentResolver contentResolver, Class<?> cls) {
        contentResolver.registerContentObserver(com.raizlabs.android.dbflow.sql.d.getNotificationUri(cls, null), true, this);
        f5130a.incrementAndGet();
        if (!this.e.containsValue(cls)) {
            this.e.put(FlowManager.getTableName(cls), cls);
        }
    }

    public void unregisterForContentChanges(Context context) {
        context.getContentResolver().unregisterContentObserver(this);
        f5130a.decrementAndGet();
        this.e.clear();
    }

    public boolean isSubscribed() {
        return !this.e.isEmpty();
    }

    public void onChange(boolean z) {
        for (b onModelStateChanged : this.c) {
            onModelStateChanged.onModelStateChanged(null, BaseModel.Action.CHANGE, new w[0]);
        }
        for (g onTableChanged : this.d) {
            onTableChanged.onTableChanged(null, BaseModel.Action.CHANGE);
        }
    }

    public void onChange(boolean z, Uri uri) {
        a(uri, false);
    }

    private void a(Uri uri, boolean z) {
        String fragment = uri.getFragment();
        String authority = uri.getAuthority();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        w[] wVarArr = new w[queryParameterNames.size()];
        if (!queryParameterNames.isEmpty()) {
            int i = 0;
            for (String next : queryParameterNames) {
                wVarArr[i] = t.op(new s.a(Uri.decode(next)).build()).eq(Uri.decode(uri.getQueryParameter(next)));
                i++;
            }
        }
        Class cls = this.e.get(authority);
        BaseModel.Action valueOf = BaseModel.Action.valueOf(fragment);
        if (!this.isInTransaction) {
            for (b onModelStateChanged : this.c) {
                onModelStateChanged.onModelStateChanged(cls, valueOf, wVarArr);
            }
            if (!z) {
                for (g onTableChanged : this.d) {
                    onTableChanged.onTableChanged(cls, valueOf);
                }
            }
            return;
        }
        if (!this.h) {
            valueOf = BaseModel.Action.CHANGE;
            uri = com.raizlabs.android.dbflow.sql.d.getNotificationUri(cls, valueOf);
        }
        synchronized (this.f) {
            this.f.add(uri);
        }
        synchronized (this.g) {
            this.g.add(com.raizlabs.android.dbflow.sql.d.getNotificationUri(cls, valueOf));
        }
    }
}
