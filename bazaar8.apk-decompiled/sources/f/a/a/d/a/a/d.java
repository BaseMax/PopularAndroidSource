package f.a.a.d.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.platform.xml.factory.CommonActionFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* compiled from: PullResponseFactory */
public class d implements a.C0141a {
    public a a(Object obj, f fVar) {
        f.a.a.g.d.b.a aVar = new f.a.a.g.d.b.a();
        Element element = (Element) ((Document) obj).getElementsByTagName("pullResponse").item(0);
        a(aVar, element, fVar);
        a(aVar, element);
        b(aVar, element);
        return aVar;
    }

    public final void b(f.a.a.g.d.b.a aVar, Element element) {
        if (element.hasAttribute("token")) {
            aVar.a(element.getAttribute("token"));
        }
    }

    public void a(f.a.a.g.d.b.a aVar, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            aVar.a((b) new CommonActionFactory(false).a(element, fVar));
        }
    }

    public void a(f.a.a.g.d.b.a aVar, Element element) {
        if (element.hasAttribute("keepOn")) {
            aVar.a(element.getAttribute("keepOn").trim().toLowerCase().equals("true"));
        }
    }
}
