package c.e.a.a.e.b;

import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* compiled from: ScriptTagPayloadReader */
public final class d extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    public long f7648b = -9223372036854775807L;

    public d() {
        super(null);
    }

    public static Date c(v vVar) {
        Date date = new Date((long) d(vVar).doubleValue());
        vVar.f(2);
        return date;
    }

    public static Double d(v vVar) {
        return Double.valueOf(Double.longBitsToDouble(vVar.q()));
    }

    public static HashMap<String, Object> e(v vVar) {
        int y = vVar.y();
        HashMap<String, Object> hashMap = new HashMap<>(y);
        for (int i2 = 0; i2 < y; i2++) {
            hashMap.put(h(vVar), a(vVar, i(vVar)));
        }
        return hashMap;
    }

    public static HashMap<String, Object> f(v vVar) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String h2 = h(vVar);
            int i2 = i(vVar);
            if (i2 == 9) {
                return hashMap;
            }
            hashMap.put(h2, a(vVar, i2));
        }
    }

    public static ArrayList<Object> g(v vVar) {
        int y = vVar.y();
        ArrayList<Object> arrayList = new ArrayList<>(y);
        for (int i2 = 0; i2 < y; i2++) {
            arrayList.add(a(vVar, i(vVar)));
        }
        return arrayList;
    }

    public static String h(v vVar) {
        int A = vVar.A();
        int c2 = vVar.c();
        vVar.f(A);
        return new String(vVar.f9634a, c2, A);
    }

    public static int i(v vVar) {
        return vVar.u();
    }

    public long a() {
        return this.f7648b;
    }

    public boolean a(v vVar) {
        return true;
    }

    public void b(v vVar, long j2) {
        if (i(vVar) != 2) {
            throw new ParserException();
        } else if ("onMetaData".equals(h(vVar)) && i(vVar) == 8) {
            HashMap<String, Object> e2 = e(vVar);
            if (e2.containsKey("duration")) {
                double doubleValue = ((Double) e2.get("duration")).doubleValue();
                if (doubleValue > 0.0d) {
                    this.f7648b = (long) (doubleValue * 1000000.0d);
                }
            }
        }
    }

    public static Object a(v vVar, int i2) {
        if (i2 == 0) {
            return d(vVar);
        }
        if (i2 == 1) {
            return b(vVar);
        }
        if (i2 == 2) {
            return h(vVar);
        }
        if (i2 == 3) {
            return f(vVar);
        }
        if (i2 == 8) {
            return e(vVar);
        }
        if (i2 == 10) {
            return g(vVar);
        }
        if (i2 != 11) {
            return null;
        }
        return c(vVar);
    }

    public static Boolean b(v vVar) {
        boolean z = true;
        if (vVar.u() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
