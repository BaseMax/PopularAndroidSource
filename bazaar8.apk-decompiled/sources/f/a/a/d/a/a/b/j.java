package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1075q;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.platform.xml.factory.CommonActionFactory;
import org.w3c.dom.Element;

/* compiled from: FooterFactory */
public class j implements a.C0141a {
    public a a(Object obj, f fVar) {
        C1075q qVar = new C1075q();
        Element element = (Element) obj;
        a(qVar, element, fVar);
        b(qVar, element, fVar);
        return qVar;
    }

    public void b(C1075q qVar, Element element, f fVar) {
        if (!element.hasAttribute("action") && element.getElementsByTagName("secondaryAction").getLength() > 0) {
            Element element2 = (Element) element.getElementsByTagName("secondaryAction").item(0);
            qVar.b(new C1075q.a(element2.getTextContent().trim(), (b) new CommonActionFactory(true).a(element2, fVar)));
        }
    }

    public void a(C1075q qVar, Element element, f fVar) {
        if (element.hasAttribute("action")) {
            qVar.a(new C1075q.a(element.getTextContent().trim(), (b) new CommonActionFactory(true).a(element, fVar)));
        } else if (element.getElementsByTagName("primaryAction").getLength() > 0) {
            Element element2 = (Element) element.getElementsByTagName("primaryAction").item(0);
            qVar.a(new C1075q.a(element2.getTextContent().trim(), (b) new CommonActionFactory(true).a(element2, fVar)));
        }
    }
}
