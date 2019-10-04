package f.a.a.d.a.a.a;

import f.a.a.d.a.a.b.x;
import f.a.a.d.f;
import f.a.a.e.a.d;
import f.a.a.e.a.m;
import org.w3c.dom.Element;

/* compiled from: TextChangerFactory */
public class g extends c {
    public d a(Element element, f fVar) {
        m mVar = new m();
        a(mVar, element);
        return mVar;
    }

    public void a(m mVar, Element element) {
        String trim = x.a(element).trim();
        if (trim.length() > 0) {
            mVar.b(trim);
        }
    }
}
