package i.a.c;

import h.a.m;
import h.a.q;
import h.a.u;
import h.f.b.j;
import h.k.n;
import java.io.BufferedReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.TypeCastException;

/* compiled from: FastServiceLoader.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f14753a = new h();

    public final <S> List<S> a(Class<S> cls, ClassLoader classLoader) {
        j.b(cls, "service");
        j.b(classLoader, "loader");
        try {
            return b(cls, classLoader);
        } catch (Throwable unused) {
            ServiceLoader<S> load = ServiceLoader.load(cls, classLoader);
            j.a((Object) load, "ServiceLoader.load(service, loader)");
            return u.h(load);
        }
    }

    public final <S> List<S> b(Class<S> cls, ClassLoader classLoader) {
        j.b(cls, "service");
        j.b(classLoader, "loader");
        Enumeration<URL> resources = classLoader.getResources("META-INF/services/" + cls.getName());
        j.a((Object) resources, "urls");
        ArrayList<T> list = Collections.list(resources);
        j.a((Object) list, "java.util.Collections.list(this)");
        ArrayList arrayList = new ArrayList();
        for (T t : list) {
            h hVar = f14753a;
            j.a((Object) t, "it");
            q.a(arrayList, hVar.a((URL) t));
        }
        Set<String> k2 = u.k(arrayList);
        if (!k2.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(m.a(k2, 10));
            for (String a2 : k2) {
                arrayList2.add(f14753a.a(a2, classLoader, cls));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException("No providers were loaded with FastServiceLoader");
    }

    public final <S> S a(String str, ClassLoader classLoader, Class<S> cls) {
        Class<?> cls2 = Class.forName(str, false, classLoader);
        if (cls.isAssignableFrom(cls2)) {
            return cls.cast(cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        }
        throw new IllegalArgumentException(("Expected service of class " + cls + ", but found " + cls2).toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004f, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0050, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0054, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0055, code lost:
        r5 = r1;
        r1 = r0;
        r0 = r5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<java.lang.String> a(java.net.URL r7) {
        /*
            r6 = this;
            java.lang.String r0 = r7.toString()
            java.lang.String r1 = "url.toString()"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            r1 = 0
            r2 = 2
            r3 = 0
            java.lang.String r4 = "jar"
            boolean r4 = h.k.m.b(r0, r4, r1, r2, r3)
            if (r4 == 0) goto L_0x006d
            java.lang.String r7 = "jar:file:"
            java.lang.String r7 = h.k.n.a((java.lang.String) r0, (java.lang.String) r7, (java.lang.String) r3, (int) r2, (java.lang.Object) r3)
            r4 = 33
            java.lang.String r7 = h.k.n.a((java.lang.String) r7, (char) r4, (java.lang.String) r3, (int) r2, (java.lang.Object) r3)
            java.lang.String r4 = "!/"
            java.lang.String r0 = h.k.n.a((java.lang.String) r0, (java.lang.String) r4, (java.lang.String) r3, (int) r2, (java.lang.Object) r3)
            java.util.jar.JarFile r2 = new java.util.jar.JarFile
            r2.<init>(r7, r1)
            java.io.BufferedReader r7 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x005e }
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch:{ Throwable -> 0x005e }
            java.util.zip.ZipEntry r4 = new java.util.zip.ZipEntry     // Catch:{ Throwable -> 0x005e }
            r4.<init>(r0)     // Catch:{ Throwable -> 0x005e }
            java.io.InputStream r0 = r2.getInputStream(r4)     // Catch:{ Throwable -> 0x005e }
            java.lang.String r4 = "UTF-8"
            r1.<init>(r0, r4)     // Catch:{ Throwable -> 0x005e }
            r7.<init>(r1)     // Catch:{ Throwable -> 0x005e }
            i.a.c.h r0 = f14753a     // Catch:{ Throwable -> 0x0052, all -> 0x004f }
            java.util.List r0 = r0.a((java.io.BufferedReader) r7)     // Catch:{ Throwable -> 0x0052, all -> 0x004f }
            h.e.a.a(r7, r3)     // Catch:{ Throwable -> 0x005e }
            r2.close()     // Catch:{ Throwable -> 0x004d }
            return r0
        L_0x004d:
            r7 = move-exception
            throw r7
        L_0x004f:
            r0 = move-exception
            r1 = r3
            goto L_0x0058
        L_0x0052:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0054 }
        L_0x0054:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0058:
            h.e.a.a(r7, r1)     // Catch:{ Throwable -> 0x005e }
            throw r0     // Catch:{ Throwable -> 0x005e }
        L_0x005c:
            r7 = move-exception
            goto L_0x0061
        L_0x005e:
            r7 = move-exception
            r3 = r7
            throw r3     // Catch:{ all -> 0x005c }
        L_0x0061:
            r2.close()     // Catch:{ Throwable -> 0x0065 }
            throw r7
        L_0x0065:
            r7 = move-exception
            if (r3 != 0) goto L_0x0069
            throw r7
        L_0x0069:
            h.a.a(r3, r7)
            throw r3
        L_0x006d:
            java.io.BufferedReader r0 = new java.io.BufferedReader
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            java.io.InputStream r7 = r7.openStream()
            r1.<init>(r7)
            r0.<init>(r1)
            i.a.c.h r7 = f14753a     // Catch:{ Throwable -> 0x0087 }
            java.util.List r7 = r7.a((java.io.BufferedReader) r0)     // Catch:{ Throwable -> 0x0087 }
            h.e.a.a(r0, r3)
            return r7
        L_0x0085:
            r7 = move-exception
            goto L_0x008a
        L_0x0087:
            r7 = move-exception
            r3 = r7
            throw r3     // Catch:{ all -> 0x0085 }
        L_0x008a:
            h.e.a.a(r0, r3)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: i.a.c.h.a(java.net.URL):java.util.List");
    }

    public final List<String> a(BufferedReader bufferedReader) {
        boolean z;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return u.h(linkedHashSet);
            }
            String b2 = n.b(readLine, "#", (String) null, 2, (Object) null);
            if (b2 != null) {
                String obj = n.f(b2).toString();
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= obj.length()) {
                        z = true;
                        break;
                    }
                    char charAt = obj.charAt(i2);
                    if (!(charAt == '.' || Character.isJavaIdentifierPart(charAt))) {
                        z = false;
                        break;
                    }
                    i2++;
                }
                if (z) {
                    if (obj.length() > 0) {
                        z2 = true;
                    }
                    if (z2) {
                        linkedHashSet.add(obj);
                    }
                } else {
                    throw new IllegalArgumentException(("Illegal service provider class name: " + obj).toString());
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
        }
    }
}
