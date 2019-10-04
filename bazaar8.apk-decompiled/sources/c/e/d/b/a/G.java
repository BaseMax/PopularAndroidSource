package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.x;
import com.google.gson.stream.JsonToken;
import e.a.a.a.a.d.c;
import java.util.Locale;
import java.util.StringTokenizer;

/* compiled from: TypeAdapters */
class G extends x<Locale> {
    public Locale a(b bVar) {
        String str = null;
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(bVar.I(), c.ROLL_OVER_FILE_NAME_SEPARATOR);
        String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        if (stringTokenizer.hasMoreElements()) {
            str = stringTokenizer.nextToken();
        }
        if (nextToken2 == null && str == null) {
            return new Locale(nextToken);
        }
        if (str == null) {
            return new Locale(nextToken, nextToken2);
        }
        return new Locale(nextToken, nextToken2, str);
    }

    public void a(c.e.d.d.c cVar, Locale locale) {
        cVar.h(locale == null ? null : locale.toString());
    }
}
