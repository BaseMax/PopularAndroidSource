package f.a.a.d.a.a.b.a;

import f.a.a.d.e;
import f.a.a.d.f;
import f.a.a.e.b.b.l;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: ChoicesFactory */
public class c extends d {
    public void a(l lVar, Element element, f fVar) {
        NodeList elementsByTagName = element.getElementsByTagName("option");
        ArrayList arrayList = new ArrayList();
        lVar.a((List<e>) arrayList);
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            e eVar = (e) fVar.a("option", elementsByTagName.item(i2));
            arrayList.add(eVar);
            if (((Element) elementsByTagName.item(i2)).hasAttribute("selected")) {
                lVar.a((Object) eVar.b());
            }
        }
    }

    public ControllableInputInflater b(Element element, f fVar) {
        l lVar = new l();
        a(lVar, element, fVar);
        return lVar;
    }
}
