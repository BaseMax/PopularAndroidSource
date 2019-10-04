package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.e;
import f.a.a.d.f;
import org.w3c.dom.Element;

/* compiled from: OptionFactory */
public class m implements a.C0141a {
    public a a(Object obj, f fVar) {
        e eVar = new e();
        Element element = (Element) obj;
        a(eVar, element);
        b(eVar, element);
        return eVar;
    }

    public void b(e eVar, Element element) {
        if (element.hasAttribute("value")) {
            eVar.b(element.getAttribute("value"));
        } else {
            eVar.b(eVar.a());
        }
    }

    public void a(e eVar, Element element) {
        eVar.a(element.getTextContent());
    }
}
