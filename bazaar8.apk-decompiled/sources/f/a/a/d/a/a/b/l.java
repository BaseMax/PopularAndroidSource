package f.a.a.d.a.a.b;

import android.text.TextUtils;
import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import f.a.a.e.b.C1082y;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: ListFactory */
public class l extends i {
    public C1072n a(Element element, f fVar) {
        C1082y yVar = new C1082y();
        a(yVar, element, fVar);
        b(yVar, element);
        c(yVar, element);
        a(yVar, element);
        return yVar;
    }

    public final void b(C1082y yVar, Element element) {
        if (element.hasAttribute("path")) {
            yVar.c(element.getAttribute("path"));
        }
    }

    public final void c(C1082y yVar, Element element) {
        if (element.hasAttribute("token") && !TextUtils.isEmpty(element.getAttribute("token"))) {
            yVar.d(element.getAttribute("token"));
        }
    }

    public void a(C1082y yVar, Element element, f fVar) {
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            a a2 = fVar.a(childNodes.item(i2).getNodeName(), childNodes.item(i2));
            if (a2 != null && (a2 instanceof C1072n)) {
                arrayList.add((C1072n) a2);
            }
        }
        yVar.a((List<C1072n>) arrayList);
    }

    public void a(C1082y yVar, Element element) {
        if (element.hasAttribute("maxCount") && !TextUtils.isEmpty(element.getAttribute("maxCount"))) {
            yVar.a(Integer.parseInt(element.getAttribute("maxCount")));
        }
    }
}
