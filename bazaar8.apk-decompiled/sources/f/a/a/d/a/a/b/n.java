package f.a.a.d.a.a.b;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.e.b.Q;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: PageFactory */
public abstract class n implements a.C0141a {
    public a a(Object obj, f fVar) {
        PageInflater a2 = a();
        Element element = (Element) obj;
        a(a2, element, fVar);
        a(a2, element);
        b(a2, element);
        return a2;
    }

    public abstract PageInflater a();

    public void b(PageInflater pageInflater, Element element) {
        if (element.hasAttribute("path")) {
            pageInflater.a(element.getAttribute("path"));
        }
    }

    public void a(PageInflater pageInflater, Element element, f fVar) {
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            a a2 = fVar.a(childNodes.item(i2).getNodeName(), childNodes.item(i2));
            if (a2 != null) {
                if (a2 instanceof C1072n) {
                    arrayList.add((C1072n) a2);
                } else if (a2 instanceof Q) {
                    arrayList2.add((Q) a2);
                }
            }
        }
        pageInflater.a((List<C1072n>) arrayList);
        pageInflater.b(arrayList2);
    }

    public void a(PageInflater pageInflater, Element element) {
        if (element.hasAttribute("gravity")) {
            pageInflater.a(PageInflater.PageGravity.valueOf(element.getAttribute("gravity")));
        }
    }
}
