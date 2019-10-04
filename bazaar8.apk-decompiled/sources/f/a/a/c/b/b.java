package f.a.a.c.b;

import f.a.a.c.b.o;
import ir.cafebazaar.inline.platform.InlineApplication;
import java.util.Map;

/* compiled from: APICallHandler */
public class b extends o {
    public b(InlineApplication inlineApplication, String str, Map<String, Object> map, String str2) {
        super(inlineApplication, str, map, str2);
    }

    public b(InlineApplication inlineApplication, String str, Map<String, Object> map) {
        super(inlineApplication, str, map, null);
    }

    public void a(o.a aVar) {
        new Thread(new a(this, aVar)).start();
    }
}
