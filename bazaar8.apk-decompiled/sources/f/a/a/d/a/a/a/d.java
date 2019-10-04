package f.a.a.d.a.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.a.h;
import f.a.a.e.a.o;
import f.a.a.e.a.p;
import f.a.a.g.d.a.b;
import org.w3c.dom.Element;

/* compiled from: FooterChangerFactory */
public class d implements a.C0141a {
    public a a(Object obj, f fVar) {
        o oVar = new o();
        Element element = (Element) obj;
        a(oVar, element, fVar);
        b(oVar, element, fVar);
        return oVar;
    }

    public void b(o oVar, Element element, f fVar) {
        if (!element.hasAttribute("action") && element.getElementsByTagName("secondaryAction").getLength() > 0) {
            Element element2 = (Element) element.getElementsByTagName("secondaryAction").item(0);
            h hVar = new h(false);
            a(hVar, element2);
            a(hVar, element2, fVar);
            oVar.a((p) hVar);
        }
    }

    public void a(o oVar, Element element, f fVar) {
        h hVar = new h(true);
        if (element.getElementsByTagName("primaryAction").getLength() > 0) {
            Element element2 = (Element) element.getElementsByTagName("primaryAction").item(0);
            a(hVar, element2);
            a(hVar, element2, fVar);
        } else {
            a(hVar, element);
            a(hVar, element, fVar);
        }
        oVar.a((p) hVar);
    }

    public void a(h hVar, Element element) {
        String trim = element.getTextContent().trim();
        if (!trim.equals("")) {
            hVar.a(trim);
        }
    }

    public void a(h hVar, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            hVar.a((b) fVar.a("action", element));
        }
    }
}
