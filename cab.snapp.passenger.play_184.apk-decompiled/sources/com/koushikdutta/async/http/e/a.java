package com.koushikdutta.async.http.e;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.e;
import com.koushikdutta.async.af;
import com.koushikdutta.async.e.g;
import com.koushikdutta.async.f;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.ab;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.s;
import com.koushikdutta.async.http.z;
import com.koushikdutta.async.i;
import com.koushikdutta.async.j;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import com.koushikdutta.async.y;
import io.fabric.sdk.android.services.network.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.SSLContext;

public class a {
    static Hashtable<String, String> e = new Hashtable<>();
    static final /* synthetic */ boolean f = (!a.class.desiredAssertionStatus());
    private static Hashtable<Integer, String> g;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<i> f4685a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    e f4686b = new e() {
        public final void onAccepted(final j jVar) {
            AnonymousClass1 r0 = new c() {
                g d;
                String e;
                String f;
                boolean g;
                boolean h;
                e i;
                boolean j;

                /* access modifiers changed from: protected */
                public final com.koushikdutta.async.http.a.a a(n nVar) {
                    return a.a(nVar);
                }

                /* access modifiers changed from: protected */
                public final void a() {
                    n headers = getHeaders();
                    if (this.j || !"100-continue".equals(headers.get("Expect"))) {
                        String[] split = getStatusLine().split(" ");
                        this.e = split[1];
                        this.f = this.e.split("\\?")[0];
                        this.p = split[0];
                        synchronized (a.this.d) {
                            ArrayList arrayList = a.this.d.get(this.p);
                            if (arrayList != null) {
                                Iterator it = arrayList.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    C0089a aVar = (C0089a) it.next();
                                    Matcher matcher = aVar.f4707a.matcher(this.f);
                                    if (matcher.matches()) {
                                        this.n = matcher;
                                        this.d = aVar.f4708b;
                                        break;
                                    }
                                }
                            }
                        }
                        this.i = new e(jVar, this) {
                            /* access modifiers changed from: protected */
                            public final void a(Exception exc) {
                                super.a(exc);
                                if (exc != null) {
                                    jVar.setDataCallback(new d.a());
                                    jVar.setEndCallback(new a.C0084a());
                                    jVar.close();
                                }
                            }

                            /* access modifiers changed from: protected */
                            public final void a() {
                                super.a();
                                this.f4712b.setEndCallback(null);
                                AnonymousClass1 r0 = AnonymousClass1.this;
                                r0.g = true;
                                r0.c();
                            }
                        };
                        if (this.d == null) {
                            this.i.code(404);
                            this.i.end();
                        } else if (!getBody().readFullyOnRequest()) {
                            a.a(this.d, this, this.i);
                        } else {
                            if (this.h) {
                                a.a(this.d, this, this.i);
                            }
                        }
                    } else {
                        pause();
                        af.writeAll((q) this.m, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), (com.koushikdutta.async.a.a) new com.koushikdutta.async.a.a() {
                            public final void onCompleted(Exception exc) {
                                AnonymousClass1.this.resume();
                                if (exc != null) {
                                    AnonymousClass1.this.report(exc);
                                    return;
                                }
                                AnonymousClass1 r2 = AnonymousClass1.this;
                                r2.j = true;
                                r2.a();
                            }
                        });
                    }
                }

                public final void onCompleted(Exception exc) {
                    if (this.i.code() != 101) {
                        this.h = true;
                        super.onCompleted(exc);
                        this.m.setDataCallback(new d.a() {
                            public final void onDataAvailable(com.koushikdutta.async.n nVar, l lVar) {
                                super.onDataAvailable(nVar, lVar);
                                AnonymousClass1.this.m.close();
                            }
                        });
                        c();
                        if (getBody().readFullyOnRequest()) {
                            a.a(this.d, this, this.i);
                        }
                    }
                }

                /* access modifiers changed from: private */
                public void c() {
                    if (this.h && this.g) {
                        if (com.koushikdutta.async.http.q.isKeepAlive(Protocol.HTTP_1_1, getHeaders())) {
                            AnonymousClass1.this.onAccepted(jVar);
                            return;
                        }
                        jVar.close();
                    }
                }

                public final String getPath() {
                    return this.f;
                }

                public final s getQuery() {
                    String[] split = this.e.split("\\?", 2);
                    if (split.length < 2) {
                        return new s();
                    }
                    return s.parseQuery(split[1]);
                }
            };
            r0.m = jVar;
            y yVar = new y();
            r0.m.setDataCallback(yVar);
            yVar.setLineCallback(r0.o);
            r0.m.setEndCallback(new a.C0084a());
            jVar.resume();
        }

        public final void onCompleted(Exception exc) {
            a.a(a.this, exc);
        }

        public final void onListening(i iVar) {
            a.this.f4685a.add(iVar);
        }
    };
    com.koushikdutta.async.a.a c;
    final Hashtable<String, ArrayList<C0089a>> d = new Hashtable<>();

    /* renamed from: com.koushikdutta.async.http.e.a$a  reason: collision with other inner class name */
    static class C0089a {

        /* renamed from: a  reason: collision with root package name */
        Pattern f4707a;

        /* renamed from: b  reason: collision with root package name */
        g f4708b;

        private C0089a() {
        }

        /* synthetic */ C0089a(byte b2) {
            this();
        }
    }

    public interface b {
        void onConnected(z zVar, b bVar);
    }

    static {
        Hashtable<Integer, String> hashtable = new Hashtable<>();
        g = hashtable;
        hashtable.put(200, "OK");
        g.put(202, "Accepted");
        g.put(206, "Partial Content");
        g.put(101, "Switching Protocols");
        g.put(301, "Moved Permanently");
        g.put(302, "Found");
        g.put(404, "Not Found");
    }

    public a() {
        e.put("js", "application/javascript");
        e.put("json", "application/json");
        e.put("png", "image/png");
        e.put("jpg", "image/jpeg");
        e.put("html", "text/html");
        e.put("css", "text/css");
        e.put("mp4", "video/mp4");
        e.put("mov", "video/quicktime");
        e.put("wmv", "video/x-ms-wmv");
    }

    public void stop() {
        ArrayList<i> arrayList = this.f4685a;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().stop();
            }
        }
    }

    protected static void a(g gVar, b bVar, d dVar) {
        if (gVar != null) {
            gVar.onRequest(bVar, dVar);
        }
    }

    protected static com.koushikdutta.async.http.a.a a(n nVar) {
        return new k(nVar.get(c.HEADER_CONTENT_TYPE));
    }

    public i listen(h hVar, int i) {
        return hVar.listen(null, i, this.f4686b);
    }

    public i listen(int i) {
        return listen(h.getDefault(), i);
    }

    public void listenSecure(final int i, final SSLContext sSLContext) {
        h.getDefault().listen(null, i, new e() {
            public final void onAccepted(j jVar) {
                f.handshake(jVar, null, i, sSLContext.createSSLEngine(), null, null, false, new f.a() {
                    public final void onHandshakeCompleted(Exception exc, com.koushikdutta.async.e eVar) {
                        if (eVar != null) {
                            a.this.f4686b.onAccepted(eVar);
                        }
                    }
                });
            }

            public final void onListening(i iVar) {
                a.this.f4686b.onListening(iVar);
            }

            public final void onCompleted(Exception exc) {
                a.this.f4686b.onCompleted(exc);
            }
        });
    }

    public e getListenCallback() {
        return this.f4686b;
    }

    public void setErrorCallback(com.koushikdutta.async.a.a aVar) {
        this.c = aVar;
    }

    public com.koushikdutta.async.a.a getErrorCallback() {
        return this.c;
    }

    public void removeAction(String str, String str2) {
        synchronized (this.d) {
            ArrayList arrayList = this.d.get(str);
            if (arrayList != null) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (str2.equals(((C0089a) arrayList.get(i)).f4707a.toString())) {
                        arrayList.remove(i);
                        return;
                    }
                }
            }
        }
    }

    public void addAction(String str, String str2, g gVar) {
        C0089a aVar = new C0089a((byte) 0);
        aVar.f4707a = Pattern.compile("^".concat(String.valueOf(str2)));
        aVar.f4708b = gVar;
        synchronized (this.d) {
            ArrayList arrayList = this.d.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.d.put(str, arrayList);
            }
            arrayList.add(aVar);
        }
    }

    public void websocket(String str, b bVar) {
        websocket(str, null, bVar);
    }

    public void websocket(String str, final String str2, final b bVar) {
        get(str, new g() {
            public final void onRequest(b bVar, d dVar) {
                String str = bVar.getHeaders().get("Connection");
                boolean z = false;
                if (str != null) {
                    String[] split = str.split(",");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if ("Upgrade".equalsIgnoreCase(split[i].trim())) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!"websocket".equalsIgnoreCase(bVar.getHeaders().get("Upgrade")) || !z) {
                    dVar.code(404);
                    dVar.end();
                    return;
                }
                if (!TextUtils.equals(str2, bVar.getHeaders().get("Sec-WebSocket-Protocol"))) {
                    dVar.code(404);
                    dVar.end();
                    return;
                }
                bVar.onConnected(new ab(bVar, dVar), bVar);
            }
        });
    }

    public void get(String str, g gVar) {
        addAction("GET", str, gVar);
    }

    public void post(String str, g gVar) {
        addAction(c.METHOD_POST, str, gVar);
    }

    public static Pair<Integer, InputStream> getAssetStream(Context context, String str) {
        try {
            InputStream open = context.getAssets().open(str);
            return new Pair<>(Integer.valueOf(open.available()), open);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String getContentType(String str) {
        String tryGetContentType = tryGetContentType(str);
        return tryGetContentType != null ? tryGetContentType : com.koushikdutta.async.http.a.j.CONTENT_TYPE;
    }

    public static String tryGetContentType(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            String str2 = e.get(str.substring(lastIndexOf + 1));
            if (str2 != null) {
                return str2;
            }
        }
        return null;
    }

    public void directory(Context context, String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        addAction("GET", str, new g() {
            public final void onRequest(b bVar, final d dVar) {
                String replaceAll = bVar.getMatcher().replaceAll("");
                Context context = applicationContext;
                Pair<Integer, InputStream> assetStream = a.getAssetStream(context, str2 + replaceAll);
                if (assetStream == null || assetStream.second == null) {
                    dVar.code(404);
                    dVar.end();
                    return;
                }
                final InputStream inputStream = (InputStream) assetStream.second;
                dVar.getHeaders().set(c.HEADER_CONTENT_LENGTH, String.valueOf(assetStream.first));
                dVar.code(200);
                n headers = dVar.getHeaders();
                headers.add(c.HEADER_CONTENT_TYPE, a.getContentType(str2 + replaceAll));
                af.pump(inputStream, (q) dVar, (com.koushikdutta.async.a.a) new com.koushikdutta.async.a.a() {
                    public final void onCompleted(Exception exc) {
                        dVar.end();
                        g.closeQuietly(inputStream);
                    }
                });
            }
        });
        addAction(c.METHOD_HEAD, str, new g() {
            public final void onRequest(b bVar, d dVar) {
                String replaceAll = bVar.getMatcher().replaceAll("");
                Context context = applicationContext;
                Pair<Integer, InputStream> assetStream = a.getAssetStream(context, str2 + replaceAll);
                if (assetStream == null || assetStream.second == null) {
                    dVar.code(404);
                    dVar.end();
                    return;
                }
                g.closeQuietly((InputStream) assetStream.second);
                dVar.getHeaders().set(c.HEADER_CONTENT_LENGTH, String.valueOf(assetStream.first));
                dVar.code(200);
                n headers = dVar.getHeaders();
                headers.add(c.HEADER_CONTENT_TYPE, a.getContentType(str2 + replaceAll));
                dVar.writeHead();
                dVar.end();
            }
        });
    }

    public void directory(String str, File file) {
        directory(str, file, false);
    }

    public void directory(String str, final File file, final boolean z) {
        if (f || file.isDirectory()) {
            addAction("GET", str, new g() {
                public final void onRequest(b bVar, final d dVar) {
                    File file = new File(file, bVar.getMatcher().replaceAll(""));
                    if (file.isDirectory() && z) {
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        for (File file2 : file.listFiles()) {
                            if (file2.isDirectory()) {
                                arrayList.add(file2);
                            } else {
                                arrayList2.add(file2);
                            }
                        }
                        AnonymousClass1 r0 = new Comparator<File>() {
                            public final int compare(File file, File file2) {
                                return file.getName().compareTo(file2.getName());
                            }
                        };
                        Collections.sort(arrayList, r0);
                        Collections.sort(arrayList2, r0);
                        arrayList2.addAll(0, arrayList);
                    } else if (!file.isFile()) {
                        dVar.code(404);
                        dVar.end();
                    } else {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            dVar.code(200);
                            af.pump((InputStream) fileInputStream, (q) dVar, (com.koushikdutta.async.a.a) new com.koushikdutta.async.a.a() {
                                public final void onCompleted(Exception exc) {
                                    dVar.end();
                                }
                            });
                        } catch (FileNotFoundException unused) {
                            dVar.code(404);
                            dVar.end();
                        }
                    }
                }
            });
            return;
        }
        throw new AssertionError();
    }

    public static String getResponseCodeDescription(int i) {
        String str = g.get(Integer.valueOf(i));
        return str == null ? "Unknown" : str;
    }

    static /* synthetic */ void a(a aVar, Exception exc) {
        com.koushikdutta.async.a.a aVar2 = aVar.c;
        if (aVar2 != null) {
            aVar2.onCompleted(exc);
        }
    }
}
