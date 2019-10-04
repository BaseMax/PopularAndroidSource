package c.c.a.b.f;

import android.content.res.Resources;
import b.i.a.n;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.notification.NotificationType;
import h.a.u;
import h.f.b.j;
import h.h;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;

/* compiled from: NotificationDataHolder.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final Object f4676a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final n.d f4677b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, d> f4678c;

    public f(n.d dVar, Map<String, d> map) {
        j.b(dVar, "notificationBuilder");
        j.b(map, "_notificationDataMap");
        this.f4677b = dVar;
        this.f4678c = map;
    }

    public final String a(Resources resources, NotificationType notificationType) {
        j.b(resources, "resource");
        j.b(notificationType, "notificationType");
        switch (e.f4675b[notificationType.ordinal()]) {
            case 1:
            case 2:
                throw new IllegalStateException("body is invalid parameter for download progress");
            case 3:
                return b(resources, notificationType);
            case 4:
                return b(resources, notificationType);
            case 5:
                return f(resources, notificationType);
            case 6:
                Integer a2 = notificationType.a(c().size());
                if (a2 != null) {
                    String string = resources.getString(a2.intValue(), new Object[]{Integer.valueOf(c().size())});
                    j.a((Object) string, "resource.getString(\n    …ataMap.size\n            )");
                    return string;
                }
                j.a();
                throw null;
            case 7:
                return a(resources);
            default:
                throw new IllegalStateException("invalid state");
        }
    }

    public final n.d b() {
        return this.f4677b;
    }

    public final Map<String, d> c() {
        return this.f4678c;
    }

    public final int d() {
        int size;
        synchronized (this.f4676a) {
            int i2 = 0;
            for (d b2 : c().values()) {
                Integer b3 = b2.b();
                i2 += b3 != null ? b3.intValue() : 0;
            }
            size = i2 / c().values().size();
        }
        return size;
    }

    public final String e(Resources resources, NotificationType notificationType) {
        j.b(resources, "resource");
        j.b(notificationType, "notificationType");
        switch (e.f4674a[notificationType.ordinal()]) {
            case 1:
            case 2:
                return d(resources, notificationType);
            case 3:
                String c2 = c(resources, notificationType);
                j.a((Object) c2, "getDownloadCompleteNotif…source, notificationType)");
                return c2;
            case 4:
                String c3 = c(resources, notificationType);
                j.a((Object) c3, "getDownloadCompleteNotif…source, notificationType)");
                return c3;
            case 5:
            case 6:
                String string = resources.getString(notificationType.b(c().size()), new Object[]{Integer.valueOf(c().size())});
                j.a((Object) string, "resource.getString(\n    …ataMap.size\n            )");
                return string;
            case 7:
                String string2 = resources.getString(R.string.login_to_bazaar);
                j.a((Object) string2, "resource.getString(R.string.login_to_bazaar)");
                return string2;
            default:
                throw new IllegalStateException("invalid state " + notificationType);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.f4678c, (java.lang.Object) r3.f4678c) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.b.f.f
            if (r0 == 0) goto L_0x001d
            c.c.a.b.f.f r3 = (c.c.a.b.f.f) r3
            b.i.a.n$d r0 = r2.f4677b
            b.i.a.n$d r1 = r3.f4677b
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.util.Map<java.lang.String, c.c.a.b.f.d> r0 = r2.f4678c
            java.util.Map<java.lang.String, c.c.a.b.f.d> r3 = r3.f4678c
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.f.f.equals(java.lang.Object):boolean");
    }

    public final String f(Resources resources, NotificationType notificationType) {
        String str;
        synchronized (this.f4676a) {
            Integer a2 = notificationType.a(c().size());
            String str2 = null;
            if (a2 != null) {
                String string = resources.getString(a2.intValue());
                if (c().size() == 1) {
                    h.f.b.n nVar = h.f.b.n.f14575a;
                    Locale locale = Locale.getDefault();
                    j.a((Object) locale, "Locale.getDefault()");
                    j.a((Object) string, "quantityString");
                    Object[] objArr = new Object[1];
                    d dVar = (d) u.c(c().values());
                    if (dVar != null) {
                        str2 = dVar.a();
                    }
                    objArr[0] = str2;
                    str = String.format(locale, string, Arrays.copyOf(objArr, objArr.length));
                    j.a((Object) str, "java.lang.String.format(locale, format, *args)");
                } else {
                    h.f.b.n nVar2 = h.f.b.n.f14575a;
                    Locale locale2 = Locale.getDefault();
                    j.a((Object) locale2, "Locale.getDefault()");
                    j.a((Object) string, "quantityString");
                    Object[] objArr2 = new Object[2];
                    d dVar2 = (d) u.c(c().values());
                    if (dVar2 != null) {
                        str2 = dVar2.a();
                    }
                    objArr2[0] = str2;
                    objArr2[1] = Integer.valueOf(c().size() - 1);
                    str = String.format(locale2, string, Arrays.copyOf(objArr2, objArr2.length));
                    j.a((Object) str, "java.lang.String.format(locale, format, *args)");
                }
            } else {
                j.a();
                throw null;
            }
        }
        return str;
    }

    public int hashCode() {
        n.d dVar = this.f4677b;
        int i2 = 0;
        int hashCode = (dVar != null ? dVar.hashCode() : 0) * 31;
        Map<String, d> map = this.f4678c;
        if (map != null) {
            i2 = map.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "NotificationDataHolder(notificationBuilder=" + this.f4677b + ", _notificationDataMap=" + this.f4678c + ")";
    }

    public final String b(Resources resources, NotificationType notificationType) {
        String string;
        synchronized (this.f4676a) {
            Integer a2 = notificationType.a(c().size());
            String str = null;
            if (a2 != null) {
                string = resources.getString(a2.intValue());
                if (c().size() == 1) {
                    h.f.b.n nVar = h.f.b.n.f14575a;
                    Locale locale = Locale.getDefault();
                    j.a((Object) locale, "Locale.getDefault()");
                    j.a((Object) string, "quantityString");
                    Object[] objArr = new Object[1];
                    d dVar = (d) u.c(c().values());
                    if (dVar != null) {
                        str = dVar.a();
                    }
                    objArr[0] = str;
                    string = String.format(locale, string, Arrays.copyOf(objArr, objArr.length));
                    j.a((Object) string, "java.lang.String.format(locale, format, *args)");
                } else {
                    j.a((Object) string, "quantityString");
                }
            } else {
                j.a();
                throw null;
            }
        }
        return string;
    }

    public final String c(Resources resources, NotificationType notificationType) {
        String string;
        synchronized (this.f4676a) {
            string = resources.getString(notificationType.b(c().size()), new Object[]{Integer.valueOf(c().size()), Integer.valueOf(c().size())});
        }
        return string;
    }

    public final String d(Resources resources, NotificationType notificationType) {
        Object obj;
        String format;
        synchronized (this.f4676a) {
            String string = resources.getString(notificationType.b(c().size()));
            h.f.b.n nVar = h.f.b.n.f14575a;
            Locale locale = Locale.getDefault();
            j.a((Object) locale, "Locale.getDefault()");
            j.a((Object) string, "quantityString");
            Object[] objArr = new Object[1];
            if (c().size() == 1) {
                d dVar = (d) u.c(c().values());
                obj = dVar != null ? dVar.a() : null;
            } else {
                obj = Integer.valueOf(c().size());
            }
            objArr[0] = obj;
            format = String.format(locale, string, Arrays.copyOf(objArr, objArr.length));
            j.a((Object) format, "java.lang.String.format(locale, format, *args)");
        }
        return format;
    }

    public final void a(String str, String str2, Integer num) {
        j.b(str, "entityId");
        j.b(str2, "title");
        synchronized (this.f4676a) {
            d dVar = c().get(str);
            if (dVar == null) {
                this.f4678c.put(str, new d(str2, num));
            } else {
                this.f4678c.put(str, dVar.a(str2, num));
            }
            h hVar = h.f14579a;
        }
    }

    public final void a(String str) {
        j.b(str, "packageName");
        this.f4678c.remove(str);
    }

    public final void a() {
        this.f4678c.clear();
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0029  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0036  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(android.content.res.Resources r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f4676a
            monitor-enter(r0)
            java.util.Map r1 = r5.c()     // Catch:{ all -> 0x0048 }
            java.util.Collection r1 = r1.values()     // Catch:{ all -> 0x0048 }
            java.lang.Object r1 = h.a.u.c(r1)     // Catch:{ all -> 0x0048 }
            c.c.a.b.f.d r1 = (c.c.a.b.f.d) r1     // Catch:{ all -> 0x0048 }
            if (r1 == 0) goto L_0x0018
            java.lang.String r1 = r1.a()     // Catch:{ all -> 0x0048 }
            goto L_0x0019
        L_0x0018:
            r1 = 0
        L_0x0019:
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L_0x0026
            int r4 = r1.length()     // Catch:{ all -> 0x0048 }
            if (r4 != 0) goto L_0x0024
            goto L_0x0026
        L_0x0024:
            r4 = 0
            goto L_0x0027
        L_0x0026:
            r4 = 1
        L_0x0027:
            if (r4 == 0) goto L_0x0036
            r1 = 2131755057(0x7f100031, float:1.9140983E38)
            java.lang.String r6 = r6.getString(r1)     // Catch:{ all -> 0x0048 }
            java.lang.String r1 = "resource.getString(R.string.ask_to_login_message)"
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r1)     // Catch:{ all -> 0x0048 }
            goto L_0x0046
        L_0x0036:
            r4 = 2131755058(0x7f100032, float:1.9140985E38)
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x0048 }
            r3[r2] = r1     // Catch:{ all -> 0x0048 }
            java.lang.String r6 = r6.getString(r4, r3)     // Catch:{ all -> 0x0048 }
            java.lang.String r1 = "resource.getString(R.str…_login_message_, appName)"
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r1)     // Catch:{ all -> 0x0048 }
        L_0x0046:
            monitor-exit(r0)
            return r6
        L_0x0048:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.f.f.a(android.content.res.Resources):java.lang.String");
    }
}
