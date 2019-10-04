package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.GZIPInputStream;
import org.eclipse.paho.a.a.w;

public final class c {
    public static final String CHARSET_UTF8 = "UTF-8";
    public static final String CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";
    public static final String CONTENT_TYPE_JSON = "application/json";
    public static final String ENCODING_GZIP = "gzip";
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_ACCEPT_CHARSET = "Accept-Charset";
    public static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
    public static final String HEADER_AUTHORIZATION = "Authorization";
    public static final String HEADER_CACHE_CONTROL = "Cache-Control";
    public static final String HEADER_CONTENT_ENCODING = "Content-Encoding";
    public static final String HEADER_CONTENT_LENGTH = "Content-Length";
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final String HEADER_DATE = "Date";
    public static final String HEADER_ETAG = "ETag";
    public static final String HEADER_EXPIRES = "Expires";
    public static final String HEADER_IF_NONE_MATCH = "If-None-Match";
    public static final String HEADER_LAST_MODIFIED = "Last-Modified";
    public static final String HEADER_LOCATION = "Location";
    public static final String HEADER_PROXY_AUTHORIZATION = "Proxy-Authorization";
    public static final String HEADER_REFERER = "Referer";
    public static final String HEADER_SERVER = "Server";
    public static final String HEADER_USER_AGENT = "User-Agent";
    public static final String METHOD_DELETE = "DELETE";
    public static final String METHOD_GET = "GET";
    public static final String METHOD_HEAD = "HEAD";
    public static final String METHOD_OPTIONS = "OPTIONS";
    public static final String METHOD_POST = "POST";
    public static final String METHOD_PUT = "PUT";
    public static final String METHOD_TRACE = "TRACE";
    public static final String PARAM_CHARSET = "charset";

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f6657a = new String[0];

    /* renamed from: b  reason: collision with root package name */
    private static C0125c f6658b = C0125c.DEFAULT;
    private HttpURLConnection c = null;
    private final String d;
    private g e;
    private boolean f;
    private boolean g;
    private boolean h = true;
    private boolean i = false;
    /* access modifiers changed from: private */
    public int j = 8192;
    private String k;
    private int l;
    public final URL url;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f6674a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

        private a() {
        }

        private static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
            byte[] bArr3 = f6674a;
            int i4 = 0;
            int i5 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0);
            if (i2 > 2) {
                i4 = (bArr[i + 2] << 24) >>> 24;
            }
            int i6 = i5 | i4;
            if (i2 == 1) {
                bArr2[i3] = bArr3[i6 >>> 18];
                bArr2[i3 + 1] = bArr3[(i6 >>> 12) & 63];
                bArr2[i3 + 2] = 61;
                bArr2[i3 + 3] = 61;
                return bArr2;
            } else if (i2 == 2) {
                bArr2[i3] = bArr3[i6 >>> 18];
                bArr2[i3 + 1] = bArr3[(i6 >>> 12) & 63];
                bArr2[i3 + 2] = bArr3[(i6 >>> 6) & 63];
                bArr2[i3 + 3] = 61;
                return bArr2;
            } else if (i2 != 3) {
                return bArr2;
            } else {
                bArr2[i3] = bArr3[i6 >>> 18];
                bArr2[i3 + 1] = bArr3[(i6 >>> 12) & 63];
                bArr2[i3 + 2] = bArr3[(i6 >>> 6) & 63];
                bArr2[i3 + 3] = bArr3[i6 & 63];
                return bArr2;
            }
        }

        public static String encode(String str) {
            byte[] bArr;
            try {
                bArr = str.getBytes("US-ASCII");
            } catch (UnsupportedEncodingException unused) {
                bArr = str.getBytes();
            }
            return encodeBytes(bArr);
        }

        public static String encodeBytes(byte[] bArr) {
            return encodeBytes(bArr, 0, bArr.length);
        }

        public static String encodeBytes(byte[] bArr, int i, int i2) {
            byte[] encodeBytesToBytes = encodeBytesToBytes(bArr, i, i2);
            try {
                return new String(encodeBytesToBytes, "US-ASCII");
            } catch (UnsupportedEncodingException unused) {
                return new String(encodeBytesToBytes);
            }
        }

        public static byte[] encodeBytesToBytes(byte[] bArr, int i, int i2) {
            if (bArr == null) {
                throw new NullPointerException("Cannot serialize a null array.");
            } else if (i < 0) {
                throw new IllegalArgumentException("Cannot have negative offset: ".concat(String.valueOf(i)));
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Cannot have length offset: ".concat(String.valueOf(i2)));
            } else if (i + i2 <= bArr.length) {
                int i3 = 4;
                int i4 = (i2 / 3) * 4;
                if (i2 % 3 <= 0) {
                    i3 = 0;
                }
                byte[] bArr2 = new byte[(i4 + i3)];
                int i5 = i2 - 2;
                int i6 = 0;
                int i7 = 0;
                while (i6 < i5) {
                    a(bArr, i6 + i, 3, bArr2, i7);
                    i6 += 3;
                    i7 += 4;
                }
                if (i6 < i2) {
                    a(bArr, i + i6, i2 - i6, bArr2, i7);
                    i7 += 4;
                }
                if (i7 > bArr2.length - 1) {
                    return bArr2;
                }
                byte[] bArr3 = new byte[i7];
                System.arraycopy(bArr2, 0, bArr3, 0, i7);
                return bArr3;
            } else {
                throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Cannot have offset of %d and length of %d with array of length %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)}));
            }
        }
    }

    protected static abstract class b<V> extends f<V> {

        /* renamed from: a  reason: collision with root package name */
        private final Closeable f6675a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f6676b;

        protected b(Closeable closeable, boolean z) {
            this.f6675a = closeable;
            this.f6676b = z;
        }

        /* access modifiers changed from: protected */
        public final void a() throws IOException {
            Closeable closeable = this.f6675a;
            if (closeable instanceof Flushable) {
                ((Flushable) closeable).flush();
            }
            if (this.f6676b) {
                try {
                    this.f6675a.close();
                } catch (IOException unused) {
                }
            } else {
                this.f6675a.close();
            }
        }
    }

    /* renamed from: io.fabric.sdk.android.services.network.c$c  reason: collision with other inner class name */
    public interface C0125c {
        public static final C0125c DEFAULT = new C0125c() {
            public final HttpURLConnection create(URL url) throws IOException {
                return (HttpURLConnection) url.openConnection();
            }

            public final HttpURLConnection create(URL url, Proxy proxy) throws IOException {
                return (HttpURLConnection) url.openConnection(proxy);
            }
        };

        HttpURLConnection create(URL url) throws IOException;

        HttpURLConnection create(URL url, Proxy proxy) throws IOException;
    }

    protected static abstract class d<V> extends f<V> {

        /* renamed from: a  reason: collision with root package name */
        private final Flushable f6677a;

        protected d(Flushable flushable) {
            this.f6677a = flushable;
        }

        /* access modifiers changed from: protected */
        public final void a() throws IOException {
            this.f6677a.flush();
        }
    }

    public static class e extends RuntimeException {
        protected e(IOException iOException) {
            super(iOException);
        }

        public final IOException getCause() {
            return (IOException) super.getCause();
        }
    }

    protected static abstract class f<V> implements Callable<V> {
        /* access modifiers changed from: protected */
        public abstract void a() throws IOException;

        /* access modifiers changed from: protected */
        public abstract V run() throws e, IOException;

        protected f() {
        }

        public V call() throws e {
            boolean z = true;
            try {
                V run = run();
                try {
                    a();
                    return run;
                } catch (IOException e) {
                    throw new e(e);
                }
            } catch (e e2) {
                throw e2;
            } catch (IOException e3) {
                throw new e(e3);
            } catch (Throwable th) {
                th = th;
                a();
                throw th;
            }
        }
    }

    public static class g extends BufferedOutputStream {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final CharsetEncoder f6678a;

        public g(OutputStream outputStream, String str, int i) {
            super(outputStream, i);
            this.f6678a = Charset.forName(c.b(str)).newEncoder();
        }

        public final g write(String str) throws IOException {
            ByteBuffer encode = this.f6678a.encode(CharBuffer.wrap(str));
            super.write(encode.array(), 0, encode.limit());
            return this;
        }
    }

    public final c trustAllCerts() throws e {
        return this;
    }

    public final c trustAllHosts() {
        return this;
    }

    /* access modifiers changed from: private */
    public static String b(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    private static StringBuilder a(String str, StringBuilder sb) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            sb.append('/');
        }
        return sb;
    }

    private static StringBuilder b(String str, StringBuilder sb) {
        int indexOf = str.indexOf(63);
        int length = sb.length() - 1;
        if (indexOf == -1) {
            sb.append('?');
        } else if (indexOf < length && str.charAt(length) != '&') {
            sb.append('&');
        }
        return sb;
    }

    public static void setConnectionFactory(C0125c cVar) {
        if (cVar == null) {
            f6658b = C0125c.DEFAULT;
        } else {
            f6658b = cVar;
        }
    }

    public static String encode(CharSequence charSequence) throws e {
        try {
            URL url2 = new URL(charSequence.toString());
            String host = url2.getHost();
            if (url2.getPort() != -1) {
                host = host + ':' + Integer.toString(r1);
            }
            try {
                URI uri = new URI(url2.getProtocol(), host, url2.getPath(), url2.getQuery(), null);
                String aSCIIString = uri.toASCIIString();
                int indexOf = aSCIIString.indexOf(63);
                if (indexOf <= 0) {
                    return aSCIIString;
                }
                if (indexOf + 1 >= aSCIIString.length()) {
                    return aSCIIString;
                }
                return aSCIIString.substring(0, r0) + aSCIIString.substring(r0).replace(w.SINGLE_LEVEL_WILDCARD, "%2B");
            } catch (URISyntaxException e2) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e2);
                throw new e(iOException);
            }
        } catch (IOException e3) {
            throw new e(e3);
        }
    }

    public static String append(CharSequence charSequence, Map<?, ?> map) {
        String charSequence2 = charSequence.toString();
        if (map == null || map.isEmpty()) {
            return charSequence2;
        }
        StringBuilder sb = new StringBuilder(charSequence2);
        a(charSequence2, sb);
        b(charSequence2, sb);
        Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
        Map.Entry next = it.next();
        sb.append(next.getKey().toString());
        sb.append('=');
        Object value = next.getValue();
        if (value != null) {
            sb.append(value);
        }
        while (it.hasNext()) {
            sb.append('&');
            Map.Entry next2 = it.next();
            sb.append(next2.getKey().toString());
            sb.append('=');
            Object value2 = next2.getValue();
            if (value2 != null) {
                sb.append(value2);
            }
        }
        return sb.toString();
    }

    public static String append(CharSequence charSequence, Object... objArr) {
        String charSequence2 = charSequence.toString();
        if (objArr == null || objArr.length == 0) {
            return charSequence2;
        }
        if (objArr.length % 2 == 0) {
            StringBuilder sb = new StringBuilder(charSequence2);
            a(charSequence2, sb);
            b(charSequence2, sb);
            sb.append(objArr[0]);
            sb.append('=');
            Object obj = objArr[1];
            if (obj != null) {
                sb.append(obj);
            }
            for (int i2 = 2; i2 < objArr.length; i2 += 2) {
                sb.append('&');
                sb.append(objArr[i2]);
                sb.append('=');
                Object obj2 = objArr[i2 + 1];
                if (obj2 != null) {
                    sb.append(obj2);
                }
            }
            return sb.toString();
        }
        throw new IllegalArgumentException("Must specify an even number of parameter names/values");
    }

    public static c get(CharSequence charSequence) throws e {
        return new c(charSequence, "GET");
    }

    public static c get(URL url2) throws e {
        return new c(url2, "GET");
    }

    public static c get(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String append = append(charSequence, map);
        if (z) {
            append = encode(append);
        }
        return get((CharSequence) append);
    }

    public static c get(CharSequence charSequence, boolean z, Object... objArr) {
        String append = append(charSequence, objArr);
        if (z) {
            append = encode(append);
        }
        return get((CharSequence) append);
    }

    public static c post(CharSequence charSequence) throws e {
        return new c(charSequence, METHOD_POST);
    }

    public static c post(URL url2) throws e {
        return new c(url2, METHOD_POST);
    }

    public static c post(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String append = append(charSequence, map);
        if (z) {
            append = encode(append);
        }
        return post((CharSequence) append);
    }

    public static c post(CharSequence charSequence, boolean z, Object... objArr) {
        String append = append(charSequence, objArr);
        if (z) {
            append = encode(append);
        }
        return post((CharSequence) append);
    }

    public static c put(CharSequence charSequence) throws e {
        return new c(charSequence, METHOD_PUT);
    }

    public static c put(URL url2) throws e {
        return new c(url2, METHOD_PUT);
    }

    public static c put(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String append = append(charSequence, map);
        if (z) {
            append = encode(append);
        }
        return put((CharSequence) append);
    }

    public static c put(CharSequence charSequence, boolean z, Object... objArr) {
        String append = append(charSequence, objArr);
        if (z) {
            append = encode(append);
        }
        return put((CharSequence) append);
    }

    public static c delete(CharSequence charSequence) throws e {
        return new c(charSequence, "DELETE");
    }

    public static c delete(URL url2) throws e {
        return new c(url2, "DELETE");
    }

    public static c delete(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String append = append(charSequence, map);
        if (z) {
            append = encode(append);
        }
        return delete((CharSequence) append);
    }

    public static c delete(CharSequence charSequence, boolean z, Object... objArr) {
        String append = append(charSequence, objArr);
        if (z) {
            append = encode(append);
        }
        return delete((CharSequence) append);
    }

    public static c head(CharSequence charSequence) throws e {
        return new c(charSequence, METHOD_HEAD);
    }

    public static c head(URL url2) throws e {
        return new c(url2, METHOD_HEAD);
    }

    public static c head(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String append = append(charSequence, map);
        if (z) {
            append = encode(append);
        }
        return head((CharSequence) append);
    }

    public static c head(CharSequence charSequence, boolean z, Object... objArr) {
        String append = append(charSequence, objArr);
        if (z) {
            append = encode(append);
        }
        return head((CharSequence) append);
    }

    public static c options(CharSequence charSequence) throws e {
        return new c(charSequence, METHOD_OPTIONS);
    }

    public static c options(URL url2) throws e {
        return new c(url2, METHOD_OPTIONS);
    }

    public static c trace(CharSequence charSequence) throws e {
        return new c(charSequence, METHOD_TRACE);
    }

    public static c trace(URL url2) throws e {
        return new c(url2, METHOD_TRACE);
    }

    public static void keepAlive(boolean z) {
        a("http.keepAlive", Boolean.toString(z));
    }

    public static void proxyHost(String str) {
        a("http.proxyHost", str);
        a("https.proxyHost", str);
    }

    public static void proxyPort(int i2) {
        String num = Integer.toString(i2);
        a("http.proxyPort", num);
        a("https.proxyPort", num);
    }

    public static void nonProxyHosts(String... strArr) {
        if (strArr == null || strArr.length <= 0) {
            a("http.nonProxyHosts", (String) null);
            return;
        }
        StringBuilder sb = new StringBuilder();
        int length = strArr.length - 1;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(strArr[i2]);
            sb.append('|');
        }
        sb.append(strArr[length]);
        a("http.nonProxyHosts", sb.toString());
    }

    private static String a(final String str, final String str2) {
        PrivilegedAction privilegedAction;
        if (str2 != null) {
            privilegedAction = new PrivilegedAction<String>() {
                public final String run() {
                    return System.setProperty(str, str2);
                }
            };
        } else {
            privilegedAction = new PrivilegedAction<String>() {
                public final String run() {
                    return System.clearProperty(str);
                }
            };
        }
        return (String) AccessController.doPrivileged(privilegedAction);
    }

    public c(CharSequence charSequence, String str) throws e {
        try {
            this.url = new URL(charSequence.toString());
            this.d = str;
        } catch (MalformedURLException e2) {
            throw new e(e2);
        }
    }

    public c(URL url2, String str) throws e {
        this.url = url2;
        this.d = str;
    }

    private HttpURLConnection a() {
        HttpURLConnection httpURLConnection;
        try {
            if (this.k != null) {
                httpURLConnection = f6658b.create(this.url, new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.k, this.l)));
            } else {
                httpURLConnection = f6658b.create(this.url);
            }
            httpURLConnection.setRequestMethod(this.d);
            return httpURLConnection;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final String toString() {
        return method() + ' ' + url();
    }

    public final HttpURLConnection getConnection() {
        if (this.c == null) {
            this.c = a();
        }
        return this.c;
    }

    public final c ignoreCloseExceptions(boolean z) {
        this.h = z;
        return this;
    }

    public final boolean ignoreCloseExceptions() {
        return this.h;
    }

    public final int code() throws e {
        try {
            c();
            return getConnection().getResponseCode();
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c code(AtomicInteger atomicInteger) throws e {
        atomicInteger.set(code());
        return this;
    }

    public final boolean ok() throws e {
        return 200 == code();
    }

    public final boolean created() throws e {
        return 201 == code();
    }

    public final boolean serverError() throws e {
        return 500 == code();
    }

    public final boolean badRequest() throws e {
        return 400 == code();
    }

    public final boolean notFound() throws e {
        return 404 == code();
    }

    public final boolean notModified() throws e {
        return 304 == code();
    }

    public final String message() throws e {
        try {
            c();
            return getConnection().getResponseMessage();
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c disconnect() {
        getConnection().disconnect();
        return this;
    }

    public final c chunk(int i2) {
        getConnection().setChunkedStreamingMode(i2);
        return this;
    }

    public final c bufferSize(int i2) {
        if (i2 > 0) {
            this.j = i2;
            return this;
        }
        throw new IllegalArgumentException("Size must be greater than zero");
    }

    public final int bufferSize() {
        return this.j;
    }

    public final c uncompress(boolean z) {
        this.i = z;
        return this;
    }

    private ByteArrayOutputStream b() {
        int contentLength = contentLength();
        if (contentLength > 0) {
            return new ByteArrayOutputStream(contentLength);
        }
        return new ByteArrayOutputStream();
    }

    public final String body(String str) throws e {
        ByteArrayOutputStream b2 = b();
        try {
            a((InputStream) buffer(), (OutputStream) b2);
            return b2.toString(b(str));
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final String body() throws e {
        return body(charset());
    }

    public final c body(AtomicReference<String> atomicReference) throws e {
        atomicReference.set(body());
        return this;
    }

    public final c body(AtomicReference<String> atomicReference, String str) throws e {
        atomicReference.set(body(str));
        return this;
    }

    public final boolean isBodyEmpty() throws e {
        return contentLength() == 0;
    }

    public final byte[] bytes() throws e {
        ByteArrayOutputStream b2 = b();
        try {
            a((InputStream) buffer(), (OutputStream) b2);
            return b2.toByteArray();
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final BufferedInputStream buffer() throws e {
        return new BufferedInputStream(stream(), this.j);
    }

    public final InputStream stream() throws e {
        InputStream inputStream;
        if (code() < 400) {
            try {
                inputStream = getConnection().getInputStream();
            } catch (IOException e2) {
                throw new e(e2);
            }
        } else {
            inputStream = getConnection().getErrorStream();
            if (inputStream == null) {
                try {
                    inputStream = getConnection().getInputStream();
                } catch (IOException e3) {
                    throw new e(e3);
                }
            }
        }
        if (!this.i || !ENCODING_GZIP.equals(contentEncoding())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e4) {
            throw new e(e4);
        }
    }

    public final InputStreamReader reader(String str) throws e {
        try {
            return new InputStreamReader(stream(), b(str));
        } catch (UnsupportedEncodingException e2) {
            throw new e(e2);
        }
    }

    public final InputStreamReader reader() throws e {
        return reader(charset());
    }

    public final BufferedReader bufferedReader(String str) throws e {
        return new BufferedReader(reader(str), this.j);
    }

    public final BufferedReader bufferedReader() throws e {
        return bufferedReader(charset());
    }

    public final c receive(File file) throws e {
        try {
            final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), this.j);
            return (c) new b<c>(this.h, bufferedOutputStream) {
                /* access modifiers changed from: protected */
                public final /* synthetic */ Object run() throws e, IOException {
                    return c.this.receive(bufferedOutputStream);
                }
            }.call();
        } catch (FileNotFoundException e2) {
            throw new e(e2);
        }
    }

    public final c receive(OutputStream outputStream) throws e {
        try {
            return a((InputStream) buffer(), outputStream);
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c receive(PrintStream printStream) throws e {
        return receive((OutputStream) printStream);
    }

    public final c receive(Appendable appendable) throws e {
        final BufferedReader bufferedReader = bufferedReader();
        final Appendable appendable2 = appendable;
        AnonymousClass4 r0 = new b<c>(bufferedReader, this.h) {
            public final c run() throws IOException {
                CharBuffer allocate = CharBuffer.allocate(c.this.j);
                while (true) {
                    int read = bufferedReader.read(allocate);
                    if (read == -1) {
                        return c.this;
                    }
                    allocate.rewind();
                    appendable2.append(allocate, 0, read);
                    allocate.rewind();
                }
            }
        };
        return (c) r0.call();
    }

    public final c receive(Writer writer) throws e {
        final BufferedReader bufferedReader = bufferedReader();
        final Writer writer2 = writer;
        AnonymousClass5 r0 = new b<c>(bufferedReader, this.h) {
            public final c run() throws IOException {
                return c.this.a((Reader) bufferedReader, writer2);
            }
        };
        return (c) r0.call();
    }

    public final c readTimeout(int i2) {
        getConnection().setReadTimeout(i2);
        return this;
    }

    public final c connectTimeout(int i2) {
        getConnection().setConnectTimeout(i2);
        return this;
    }

    public final c header(String str, String str2) {
        getConnection().setRequestProperty(str, str2);
        return this;
    }

    public final c header(String str, Number number) {
        return header(str, number != null ? number.toString() : null);
    }

    public final c headers(Map<String, String> map) {
        if (!map.isEmpty()) {
            for (Map.Entry<String, String> header : map.entrySet()) {
                header(header);
            }
        }
        return this;
    }

    public final c header(Map.Entry<String, String> entry) {
        return header(entry.getKey(), entry.getValue());
    }

    public final String header(String str) throws e {
        d();
        return getConnection().getHeaderField(str);
    }

    public final Map<String, List<String>> headers() throws e {
        d();
        return getConnection().getHeaderFields();
    }

    public final long dateHeader(String str) throws e {
        return dateHeader(str, -1);
    }

    public final long dateHeader(String str, long j2) throws e {
        d();
        return getConnection().getHeaderFieldDate(str, j2);
    }

    public final int intHeader(String str) throws e {
        return intHeader(str, -1);
    }

    public final int intHeader(String str, int i2) throws e {
        d();
        return getConnection().getHeaderFieldInt(str, i2);
    }

    public final String[] headers(String str) {
        Map<String, List<String>> headers = headers();
        if (headers == null || headers.isEmpty()) {
            return f6657a;
        }
        List list = headers.get(str);
        if (list == null || list.isEmpty()) {
            return f6657a;
        }
        return (String[]) list.toArray(new String[list.size()]);
    }

    public final String parameter(String str, String str2) {
        return b(header(str), str2);
    }

    public final Map<String, String> parameters(String str) {
        int i2;
        String header = header(str);
        if (header == null || header.length() == 0) {
            return Collections.emptyMap();
        }
        int length = header.length();
        int indexOf = header.indexOf(59) + 1;
        if (indexOf == 0 || indexOf == length) {
            return Collections.emptyMap();
        }
        int indexOf2 = header.indexOf(59, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = length;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (indexOf < i2) {
            int indexOf3 = header.indexOf(61, indexOf);
            if (indexOf3 != -1 && indexOf3 < i2) {
                String trim = header.substring(indexOf, indexOf3).trim();
                if (trim.length() > 0) {
                    String trim2 = header.substring(indexOf3 + 1, i2).trim();
                    int length2 = trim2.length();
                    if (length2 != 0) {
                        if (length2 > 2 && '\"' == trim2.charAt(0)) {
                            int i3 = length2 - 1;
                            if ('\"' == trim2.charAt(i3)) {
                                linkedHashMap.put(trim, trim2.substring(1, i3));
                            }
                        }
                        linkedHashMap.put(trim, trim2);
                    }
                }
            }
            indexOf = i2 + 1;
            i2 = header.indexOf(59, indexOf);
            if (i2 == -1) {
                i2 = length;
            }
        }
        return linkedHashMap;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:47)
        	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:81)
        */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x006f A[EDGE_INSN: B:30:0x006f->B:29:0x006f ?: BREAK  , SYNTHETIC] */
    private static java.lang.String b(java.lang.String r8, java.lang.String r9) {
        /*
            r0 = 0
            if (r8 == 0) goto L_0x006f
            int r1 = r8.length()
            if (r1 != 0) goto L_0x000a
            goto L_0x006f
        L_0x000a:
            int r1 = r8.length()
            r2 = 59
            int r3 = r8.indexOf(r2)
            r4 = 1
            int r3 = r3 + r4
            if (r3 == 0) goto L_0x006f
            if (r3 != r1) goto L_0x001b
            goto L_0x006f
        L_0x001b:
            int r5 = r8.indexOf(r2, r3)
            r6 = -1
            if (r5 != r6) goto L_0x0023
        L_0x0022:
            r5 = r1
        L_0x0023:
            if (r3 >= r5) goto L_0x006f
            r7 = 61
            int r7 = r8.indexOf(r7, r3)
            if (r7 == r6) goto L_0x0066
            if (r7 >= r5) goto L_0x0066
            java.lang.String r3 = r8.substring(r3, r7)
            java.lang.String r3 = r3.trim()
            boolean r3 = r9.equals(r3)
            if (r3 == 0) goto L_0x0066
            int r7 = r7 + 1
            java.lang.String r3 = r8.substring(r7, r5)
            java.lang.String r3 = r3.trim()
            int r7 = r3.length()
            if (r7 == 0) goto L_0x0066
            r8 = 2
            if (r7 <= r8) goto L_0x0065
            r8 = 0
            char r8 = r3.charAt(r8)
            r9 = 34
            if (r9 != r8) goto L_0x0065
            int r7 = r7 - r4
            char r8 = r3.charAt(r7)
            if (r9 != r8) goto L_0x0065
            java.lang.String r8 = r3.substring(r4, r7)
            return r8
        L_0x0065:
            return r3
        L_0x0066:
            int r3 = r5 + 1
            int r5 = r8.indexOf(r2, r3)
            if (r5 != r6) goto L_0x0023
            goto L_0x0022
        L_0x006f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.c.b(java.lang.String, java.lang.String):java.lang.String");
    }

    public final String charset() {
        return parameter(HEADER_CONTENT_TYPE, PARAM_CHARSET);
    }

    public final c userAgent(String str) {
        return header("User-Agent", str);
    }

    public final c referer(String str) {
        return header(HEADER_REFERER, str);
    }

    public final c useCaches(boolean z) {
        getConnection().setUseCaches(z);
        return this;
    }

    public final c acceptEncoding(String str) {
        return header(HEADER_ACCEPT_ENCODING, str);
    }

    public final c acceptGzipEncoding() {
        return acceptEncoding(ENCODING_GZIP);
    }

    public final c acceptCharset(String str) {
        return header(HEADER_ACCEPT_CHARSET, str);
    }

    public final String contentEncoding() {
        return header(HEADER_CONTENT_ENCODING);
    }

    public final String server() {
        return header(HEADER_SERVER);
    }

    public final long date() {
        return dateHeader(HEADER_DATE);
    }

    public final String cacheControl() {
        return header(HEADER_CACHE_CONTROL);
    }

    public final String eTag() {
        return header(HEADER_ETAG);
    }

    public final long expires() {
        return dateHeader(HEADER_EXPIRES);
    }

    public final long lastModified() {
        return dateHeader(HEADER_LAST_MODIFIED);
    }

    public final String location() {
        return header(HEADER_LOCATION);
    }

    public final c authorization(String str) {
        return header(HEADER_AUTHORIZATION, str);
    }

    public final c proxyAuthorization(String str) {
        return header(HEADER_PROXY_AUTHORIZATION, str);
    }

    public final c basic(String str, String str2) {
        return authorization("Basic " + a.encode(str + ':' + str2));
    }

    public final c proxyBasic(String str, String str2) {
        return proxyAuthorization("Basic " + a.encode(str + ':' + str2));
    }

    public final c ifModifiedSince(long j2) {
        getConnection().setIfModifiedSince(j2);
        return this;
    }

    public final c ifNoneMatch(String str) {
        return header(HEADER_IF_NONE_MATCH, str);
    }

    public final c contentType(String str) {
        return contentType(str, null);
    }

    public final c contentType(String str, String str2) {
        if (str2 == null || str2.length() <= 0) {
            return header(HEADER_CONTENT_TYPE, str);
        }
        return header(HEADER_CONTENT_TYPE, str + "; charset=" + str2);
    }

    public final String contentType() {
        return header(HEADER_CONTENT_TYPE);
    }

    public final int contentLength() {
        return intHeader(HEADER_CONTENT_LENGTH);
    }

    public final c contentLength(String str) {
        return contentLength(Integer.parseInt(str));
    }

    public final c contentLength(int i2) {
        getConnection().setFixedLengthStreamingMode(i2);
        return this;
    }

    public final c accept(String str) {
        return header("Accept", str);
    }

    public final c acceptJson() {
        return accept("application/json");
    }

    private c a(InputStream inputStream, OutputStream outputStream) throws IOException {
        final InputStream inputStream2 = inputStream;
        final OutputStream outputStream2 = outputStream;
        AnonymousClass6 r0 = new b<c>(inputStream, this.h) {
            public final c run() throws IOException {
                byte[] bArr = new byte[c.this.j];
                while (true) {
                    int read = inputStream2.read(bArr);
                    if (read == -1) {
                        return c.this;
                    }
                    outputStream2.write(bArr, 0, read);
                }
            }
        };
        return (c) r0.call();
    }

    /* access modifiers changed from: protected */
    public final c a(Reader reader, Writer writer) throws IOException {
        final Reader reader2 = reader;
        final Writer writer2 = writer;
        AnonymousClass7 r0 = new b<c>(reader, this.h) {
            public final c run() throws IOException {
                char[] cArr = new char[c.this.j];
                while (true) {
                    int read = reader2.read(cArr);
                    if (read == -1) {
                        return c.this;
                    }
                    writer2.write(cArr, 0, read);
                }
            }
        };
        return (c) r0.call();
    }

    private c c() throws IOException {
        g gVar = this.e;
        if (gVar == null) {
            return this;
        }
        if (this.f) {
            gVar.write("\r\n--00content0boundary00--\r\n");
        }
        if (this.h) {
            try {
                this.e.close();
            } catch (IOException unused) {
            }
        } else {
            this.e.close();
        }
        this.e = null;
        return this;
    }

    private c d() throws e {
        try {
            return c();
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    private c e() throws IOException {
        if (this.e != null) {
            return this;
        }
        getConnection().setDoOutput(true);
        this.e = new g(getConnection().getOutputStream(), b(getConnection().getRequestProperty(HEADER_CONTENT_TYPE), PARAM_CHARSET), this.j);
        return this;
    }

    private c f() throws IOException {
        if (!this.f) {
            this.f = true;
            contentType("multipart/form-data; boundary=00content0boundary00").e();
            this.e.write("--00content0boundary00\r\n");
        } else {
            this.e.write("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    private c a(String str, String str2, String str3) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"");
        sb.append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"");
            sb.append(str2);
        }
        sb.append('\"');
        partHeader(com.koushikdutta.async.http.a.g.CONTENT_DISPOSITION, sb.toString());
        if (str3 != null) {
            partHeader(HEADER_CONTENT_TYPE, str3);
        }
        return send((CharSequence) "\r\n");
    }

    public final c part(String str, String str2) {
        return part(str, (String) null, str2);
    }

    public final c part(String str, String str2, String str3) throws e {
        return part(str, str2, (String) null, str3);
    }

    public final c part(String str, String str2, String str3, String str4) throws e {
        try {
            f();
            a(str, str2, str3);
            this.e.write(str4);
            return this;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c part(String str, Number number) throws e {
        return part(str, (String) null, number);
    }

    public final c part(String str, String str2, Number number) throws e {
        return part(str, str2, number != null ? number.toString() : null);
    }

    public final c part(String str, File file) throws e {
        return part(str, (String) null, file);
    }

    public final c part(String str, String str2, File file) throws e {
        return part(str, str2, (String) null, file);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0024 A[SYNTHETIC, Splitter:B:19:0x0024] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final io.fabric.sdk.android.services.network.c part(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.io.File r7) throws io.fabric.sdk.android.services.network.c.e {
        /*
            r3 = this;
            r0 = 0
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ IOException -> 0x001b }
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch:{ IOException -> 0x001b }
            r2.<init>(r7)     // Catch:{ IOException -> 0x001b }
            r1.<init>(r2)     // Catch:{ IOException -> 0x001b }
            io.fabric.sdk.android.services.network.c r4 = r3.part((java.lang.String) r4, (java.lang.String) r5, (java.lang.String) r6, (java.io.InputStream) r1)     // Catch:{ IOException -> 0x0016, all -> 0x0013 }
            r1.close()     // Catch:{ IOException -> 0x0012 }
        L_0x0012:
            return r4
        L_0x0013:
            r4 = move-exception
            r0 = r1
            goto L_0x0022
        L_0x0016:
            r4 = move-exception
            r0 = r1
            goto L_0x001c
        L_0x0019:
            r4 = move-exception
            goto L_0x0022
        L_0x001b:
            r4 = move-exception
        L_0x001c:
            io.fabric.sdk.android.services.network.c$e r5 = new io.fabric.sdk.android.services.network.c$e     // Catch:{ all -> 0x0019 }
            r5.<init>(r4)     // Catch:{ all -> 0x0019 }
            throw r5     // Catch:{ all -> 0x0019 }
        L_0x0022:
            if (r0 == 0) goto L_0x0027
            r0.close()     // Catch:{ IOException -> 0x0027 }
        L_0x0027:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.network.c.part(java.lang.String, java.lang.String, java.lang.String, java.io.File):io.fabric.sdk.android.services.network.c");
    }

    public final c part(String str, InputStream inputStream) throws e {
        return part(str, (String) null, (String) null, inputStream);
    }

    public final c part(String str, String str2, String str3, InputStream inputStream) throws e {
        try {
            f();
            a(str, str2, str3);
            a(inputStream, (OutputStream) this.e);
            return this;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c partHeader(String str, String str2) throws e {
        return send((CharSequence) str).send((CharSequence) ": ").send((CharSequence) str2).send((CharSequence) "\r\n");
    }

    public final c send(File file) throws e {
        try {
            return send((InputStream) new BufferedInputStream(new FileInputStream(file)));
        } catch (FileNotFoundException e2) {
            throw new e(e2);
        }
    }

    public final c send(byte[] bArr) throws e {
        return send((InputStream) new ByteArrayInputStream(bArr));
    }

    public final c send(InputStream inputStream) throws e {
        try {
            e();
            a(inputStream, (OutputStream) this.e);
            return this;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c send(final Reader reader) throws e {
        try {
            e();
            g gVar = this.e;
            final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(gVar, gVar.f6678a.charset());
            return (c) new d<c>(outputStreamWriter) {
                /* access modifiers changed from: protected */
                public final /* synthetic */ Object run() throws e, IOException {
                    return c.this.a(reader, outputStreamWriter);
                }
            }.call();
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c send(CharSequence charSequence) throws e {
        try {
            e();
            this.e.write(charSequence.toString());
            return this;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final OutputStreamWriter writer() throws e {
        try {
            e();
            return new OutputStreamWriter(this.e, this.e.f6678a.charset());
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c form(Map<?, ?> map) throws e {
        return form(map, "UTF-8");
    }

    public final c form(Map.Entry<?, ?> entry) throws e {
        return form(entry, "UTF-8");
    }

    public final c form(Map.Entry<?, ?> entry, String str) throws e {
        return form(entry.getKey(), entry.getValue(), str);
    }

    public final c form(Object obj, Object obj2) throws e {
        return form(obj, obj2, "UTF-8");
    }

    public final c form(Object obj, Object obj2, String str) throws e {
        boolean z = !this.g;
        if (z) {
            contentType("application/x-www-form-urlencoded", str);
            this.g = true;
        }
        String b2 = b(str);
        try {
            e();
            if (!z) {
                this.e.write(38);
            }
            this.e.write(URLEncoder.encode(obj.toString(), b2));
            this.e.write(61);
            if (obj2 != null) {
                this.e.write(URLEncoder.encode(obj2.toString(), b2));
            }
            return this;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    public final c form(Map<?, ?> map, String str) throws e {
        if (!map.isEmpty()) {
            for (Map.Entry<?, ?> form : map.entrySet()) {
                form(form, str);
            }
        }
        return this;
    }

    public final URL url() {
        return getConnection().getURL();
    }

    public final String method() {
        return getConnection().getRequestMethod();
    }

    public final c useProxy(String str, int i2) {
        if (this.c == null) {
            this.k = str;
            this.l = i2;
            return this;
        }
        throw new IllegalStateException("The connection has already been created. This method must be called before reading or writing to the request.");
    }

    public final c followRedirects(boolean z) {
        getConnection().setInstanceFollowRedirects(z);
        return this;
    }
}
