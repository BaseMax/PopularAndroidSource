package f.a.a.d.a.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.a.o;
import f.a.a.e.a.p;
import java.util.ArrayList;
import java.util.Collection;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* compiled from: ChangeSetFactory */
public class b implements a.C0141a {
    public a a(Object obj, f fVar) {
        o oVar = new o();
        a(oVar, (Element) obj, fVar);
        return oVar;
    }

    public void a(o oVar, Element element, f fVar) {
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = element.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node item = childNodes.item(i2);
            a a2 = fVar.a("change:" + item.getNodeName(), item);
            if (a2 != null) {
                if (a2 instanceof p) {
                    arrayList.add((p) a2);
                } else if (a2 instanceof o) {
                    arrayList.addAll(((o) a2).a());
                }
            }
        }
        oVar.a((Collection<p>) arrayList);
    }
}
