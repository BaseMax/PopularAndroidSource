package c.e.a.a.k.h;

import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttParserUtil */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f9282a = Pattern.compile("^NOTE(( |\t).*)?$");

    public static float a(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static boolean b(v vVar) {
        String k2 = vVar.k();
        return k2 != null && k2.startsWith("WEBVTT");
    }

    public static void c(v vVar) {
        int c2 = vVar.c();
        if (!b(vVar)) {
            vVar.e(c2);
            throw new ParserException("Expected WEBVTT. Got " + vVar.k());
        }
    }

    public static long b(String str) {
        String[] b2 = I.b(str, "\\.");
        long j2 = 0;
        for (String parseLong : I.a(b2[0], ":")) {
            j2 = (j2 * 60) + Long.parseLong(parseLong);
        }
        long j3 = j2 * 1000;
        if (b2.length == 2) {
            j3 += Long.parseLong(b2[1]);
        }
        return j3 * 1000;
    }

    public static Matcher a(v vVar) {
        String k2;
        while (true) {
            String k3 = vVar.k();
            if (k3 == null) {
                return null;
            }
            if (f9282a.matcher(k3).matches()) {
                do {
                    k2 = vVar.k();
                    if (k2 == null) {
                        break;
                    }
                } while (!k2.isEmpty());
            } else {
                Matcher matcher = g.f9272a.matcher(k3);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }
}
