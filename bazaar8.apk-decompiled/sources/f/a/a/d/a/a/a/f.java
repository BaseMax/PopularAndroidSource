package f.a.a.d.a.a.a;

import f.a.a.d.a;
import f.a.a.e.a.d;
import f.a.a.e.a.l;
import f.a.a.e.b.C1072n;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: ListChangeFactory */
public class f extends c {
    public d a(Element element, f.a.a.d.f fVar) {
        l lVar = new l();
        lVar.a(b(element, fVar));
        return lVar;
    }

    public final List<C1072n> b(Element element, f.a.a.d.f fVar) {
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            a a2 = fVar.a(childNodes.item(i2).getNodeName(), childNodes.item(i2));
            if (a2 != null && (a2 instanceof C1072n)) {
                arrayList.add((C1072n) a2);
            }
        }
        return arrayList;
    }
}
