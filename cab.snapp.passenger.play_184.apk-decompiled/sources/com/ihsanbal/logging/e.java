package com.ihsanbal.logging;

import b.c;
import com.ihsanbal.logging.d;
import java.io.IOException;
import java.util.List;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.a.a;
import org.a.b;
import org.eclipse.paho.a.a.w;

final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4439a = System.getProperty("line.separator");

    /* renamed from: b  reason: collision with root package name */
    private static final String f4440b = (f4439a + f4439a);
    private static final String[] c;
    private static final String[] d;
    private static final String e = (f4439a + "Output omitted because of Object size.");

    static {
        String str = f4439a;
        c = new String[]{str, "Omitted response body"};
        d = new String[]{str, "Omitted request body"};
    }

    protected e() {
        throw new UnsupportedOperationException();
    }

    private static boolean b(String str) {
        return f.a(str) || "\n".equals(str) || "\t".equals(str) || f.a(str.trim());
    }

    static void a(d.a aVar, Request request) {
        String str = f4439a + "Body:" + f4439a + a(request);
        String a2 = aVar.a(true);
        if (aVar.f == null) {
            b.a(aVar.d, a2, "┌────── Request ────────────────────────────────────────────────────────────────────────", aVar.c);
        }
        String str2 = a2;
        a(aVar.d, str2, new String[]{"URL: " + request.url()}, aVar.f, false, aVar.c);
        a(aVar.d, str2, a(request, aVar.e), aVar.f, true, aVar.c);
        if (aVar.e == Level.BASIC || aVar.e == Level.BODY) {
            a(aVar.d, a2, str.split(f4439a), aVar.f, true, aVar.c);
        }
        if (aVar.f == null) {
            b.a(aVar.d, a2, "└───────────────────────────────────────────────────────────────────────────────────────", aVar.c);
        }
    }

    static void a(d.a aVar, long j, boolean z, int i, String str, String str2, List<String> list, String str3, String str4) {
        d.a aVar2 = aVar;
        String str5 = f4439a + "Body:" + f4439a + a(str2);
        String a2 = aVar.a(false);
        String[] strArr = {"URL: ".concat(String.valueOf(str4)), "\n"};
        String[] a3 = a(str, j, i, z, aVar2.e, list, str3);
        if (aVar2.f == null) {
            b.a(aVar2.d, a2, "┌────── Response ───────────────────────────────────────────────────────────────────────", aVar2.c);
        }
        String str6 = a2;
        a(aVar2.d, str6, strArr, aVar2.f, true, aVar2.c);
        a(aVar2.d, str6, a3, aVar2.f, true, aVar2.c);
        if (aVar2.e == Level.BASIC || aVar2.e == Level.BODY) {
            a(aVar2.d, a2, str5.split(f4439a), aVar2.f, true, aVar2.c);
        }
        if (aVar2.f == null) {
            b.a(aVar2.d, a2, "└───────────────────────────────────────────────────────────────────────────────────────", aVar2.c);
        }
    }

    static void b(d.a aVar, Request request) {
        String a2 = aVar.a(true);
        if (aVar.f == null) {
            b.a(aVar.d, a2, "┌────── Request ────────────────────────────────────────────────────────────────────────", aVar.c);
        }
        int i = aVar.d;
        String[] strArr = {"URL: " + request.url()};
        String str = a2;
        a(i, str, strArr, aVar.f, false, aVar.c);
        a(aVar.d, str, a(request, aVar.e), aVar.f, true, aVar.c);
        if (aVar.e == Level.BASIC || aVar.e == Level.BODY) {
            a(aVar.d, a2, d, aVar.f, true, aVar.c);
        }
        if (aVar.f == null) {
            b.a(aVar.d, a2, "└───────────────────────────────────────────────────────────────────────────────────────", aVar.c);
        }
    }

    static void a(d.a aVar, long j, boolean z, int i, String str, List<String> list, String str2) {
        d.a aVar2 = aVar;
        String a2 = aVar.a(false);
        if (aVar2.f == null) {
            b.a(aVar2.d, a2, "┌────── Response ───────────────────────────────────────────────────────────────────────", aVar2.c);
        }
        String str3 = a2;
        a(aVar2.d, str3, a(str, j, i, z, aVar2.e, list, str2), aVar2.f, true, aVar2.c);
        a(aVar2.d, str3, c, aVar2.f, true, aVar2.c);
        if (aVar2.f == null) {
            b.a(aVar2.d, a2, "└───────────────────────────────────────────────────────────────────────────────────────", aVar2.c);
        }
    }

    private static String[] a(Request request, Level level) {
        String str;
        String headers = request.headers().toString();
        boolean z = level == Level.HEADERS || level == Level.BASIC;
        StringBuilder sb = new StringBuilder("Method: @");
        sb.append(request.method());
        sb.append(f4440b);
        if (b(headers) || !z) {
            str = "";
        } else {
            str = "Headers:" + f4439a + c(headers);
        }
        sb.append(str);
        return sb.toString().split(f4439a);
    }

    private static String[] a(String str, long j, int i, boolean z, Level level, List<String> list, String str2) {
        String str3;
        boolean z2 = level == Level.HEADERS || level == Level.BASIC;
        String a2 = a(list);
        StringBuilder sb = new StringBuilder();
        String str4 = "";
        if (!f.a(a2)) {
            str3 = a2 + " - ";
        } else {
            str3 = str4;
        }
        sb.append(str3);
        sb.append("is success : ");
        sb.append(z);
        sb.append(" - Received in: ");
        sb.append(j);
        sb.append("ms");
        sb.append(f4440b);
        sb.append("Status Code: ");
        sb.append(i);
        sb.append(" / ");
        sb.append(str2);
        sb.append(f4440b);
        if (!b(str) && z2) {
            str4 = "Headers:" + f4439a + c(str);
        }
        sb.append(str4);
        return sb.toString().split(f4439a);
    }

    private static String a(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String append : list) {
            sb.append(w.TOPIC_LEVEL_SEPARATOR);
            sb.append(append);
        }
        return sb.toString();
    }

    private static String c(String str) {
        String str2;
        String[] split = str.split(f4439a);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (split.length > 1) {
            while (i < split.length) {
                if (i == 0) {
                    str2 = "┌ ";
                } else {
                    str2 = i == split.length - 1 ? "└ " : "├ ";
                }
                sb.append(str2);
                sb.append(split[i]);
                sb.append("\n");
                i++;
            }
        } else {
            int length = split.length;
            while (i < length) {
                String str3 = split[i];
                sb.append("─ ");
                sb.append(str3);
                sb.append("\n");
                i++;
            }
        }
        return sb.toString();
    }

    private static void a(int i, String str, String[] strArr, c cVar, boolean z, boolean z2) {
        int i2 = i;
        String str2 = str;
        c cVar2 = cVar;
        for (String str3 : strArr) {
            int length = str3.length();
            int i3 = z ? 110 : length;
            int i4 = 0;
            while (i4 <= length / i3) {
                int i5 = i4 * i3;
                i4++;
                int i6 = i4 * i3;
                if (i6 > str3.length()) {
                    i6 = str3.length();
                }
                if (cVar2 == null) {
                    b.a(i, str2, "│ " + str3.substring(i5, i6), z2);
                } else {
                    boolean z3 = z2;
                    cVar2.log(i, str2, str3.substring(i5, i6));
                }
            }
            boolean z4 = z2;
        }
    }

    private static String a(Request request) {
        try {
            Request build = request.newBuilder().build();
            c cVar = new c();
            RequestBody body = build.body();
            if (body == null) {
                return "";
            }
            body.writeTo(cVar);
            return a(cVar.readUtf8());
        } catch (IOException e2) {
            return "{\"err\": \"" + e2.getMessage() + "\"}";
        }
    }

    static String a(String str) {
        try {
            if (str.startsWith("{")) {
                return new org.a.c(str).toString(3);
            }
            if (str.startsWith("[")) {
                return new a(str).toString(3);
            }
            return str;
        } catch (b unused) {
            return str;
        } catch (OutOfMemoryError unused2) {
            return e;
        }
    }
}
