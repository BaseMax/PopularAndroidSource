package f.a.a.d.a.a.b;

import f.a.a.d.f;
import f.a.a.e.b.C1071m;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.ButtonInflater;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: DualButtonsFactory */
public class h extends i {
    public C1072n a(Element element, f fVar) {
        C1071m mVar = new C1071m();
        NodeList elementsByTagName = element.getElementsByTagName("button");
        if (elementsByTagName.getLength() == 2) {
            mVar.a((ButtonInflater) fVar.a("button", elementsByTagName.item(0)));
            mVar.b((ButtonInflater) fVar.a("button", elementsByTagName.item(1)));
        }
        return mVar;
    }
}
