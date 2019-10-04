package c.e.a.b.g.f;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import b.f.C0243b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.ha  reason: case insensitive filesystem */
public final class C0827ha implements C0843la {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<Uri, C0827ha> f10419a = new C0243b();

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f10420b = {"key", "value"};

    /* renamed from: c  reason: collision with root package name */
    public final ContentResolver f10421c;

    /* renamed from: d  reason: collision with root package name */
    public final Uri f10422d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f10423e = new Object();

    /* renamed from: f  reason: collision with root package name */
    public volatile Map<String, String> f10424f;

    /* renamed from: g  reason: collision with root package name */
    public final List<C0839ka> f10425g = new ArrayList();

    public C0827ha(ContentResolver contentResolver, Uri uri) {
        this.f10421c = contentResolver;
        this.f10422d = uri;
        this.f10421c.registerContentObserver(uri, false, new C0835ja(this, null));
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:2|3|(5:5|6|7|8|9)|11|12) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0018 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.b.g.f.C0827ha a(android.content.ContentResolver r3, android.net.Uri r4) {
        /*
            java.lang.Class<c.e.a.b.g.f.ha> r0 = c.e.a.b.g.f.C0827ha.class
            monitor-enter(r0)
            java.util.Map<android.net.Uri, c.e.a.b.g.f.ha> r1 = f10419a     // Catch:{ all -> 0x001a }
            java.lang.Object r1 = r1.get(r4)     // Catch:{ all -> 0x001a }
            c.e.a.b.g.f.ha r1 = (c.e.a.b.g.f.C0827ha) r1     // Catch:{ all -> 0x001a }
            if (r1 != 0) goto L_0x0018
            c.e.a.b.g.f.ha r2 = new c.e.a.b.g.f.ha     // Catch:{ SecurityException -> 0x0018 }
            r2.<init>(r3, r4)     // Catch:{ SecurityException -> 0x0018 }
            java.util.Map<android.net.Uri, c.e.a.b.g.f.ha> r3 = f10419a     // Catch:{ SecurityException -> 0x0017 }
            r3.put(r4, r2)     // Catch:{ SecurityException -> 0x0017 }
        L_0x0017:
            r1 = r2
        L_0x0018:
            monitor-exit(r0)     // Catch:{ all -> 0x001a }
            return r1
        L_0x001a:
            r3 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x001a }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.C0827ha.a(android.content.ContentResolver, android.net.Uri):c.e.a.b.g.f.ha");
    }

    public final void b() {
        synchronized (this.f10423e) {
            this.f10424f = null;
            C0870sa.c();
        }
        synchronized (this) {
            for (C0839ka a2 : this.f10425g) {
                a2.a();
            }
        }
    }

    public final Map<String, String> c() {
        try {
            return (Map) C0847ma.a(new C0831ia(this));
        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    public final /* synthetic */ Map d() {
        Map map;
        Cursor query = this.f10421c.query(this.f10422d, f10420b, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            if (count <= 256) {
                map = new C0243b(count);
            } else {
                map = new HashMap(count, 1.0f);
            }
            while (query.moveToNext()) {
                map.put(query.getString(0), query.getString(1));
            }
            query.close();
            return map;
        } finally {
            query.close();
        }
    }

    public final Map<String, String> a() {
        Map<String, String> map = this.f10424f;
        if (map == null) {
            synchronized (this.f10423e) {
                map = this.f10424f;
                if (map == null) {
                    map = c();
                    this.f10424f = map;
                }
            }
        }
        if (map != null) {
            return map;
        }
        return Collections.emptyMap();
    }

    public final /* synthetic */ Object a(String str) {
        return a().get(str);
    }
}
