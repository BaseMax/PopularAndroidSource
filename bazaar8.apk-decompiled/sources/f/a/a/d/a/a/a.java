package f.a.a.d.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.t;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: PagesFactory */
public class a implements a.C0141a {
    public f.a.a.d.a a(Object obj, f fVar) {
        NodeList elementsByTagName = ((Element) obj).getElementsByTagName("page");
        t tVar = new t();
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            Element element = (Element) elementsByTagName.item(i2);
            if (element.hasAttribute("path")) {
                if (element.hasAttribute("timeout")) {
                    tVar.a(element, element.getAttribute("path"), Integer.valueOf(Integer.parseInt(element.getAttribute("timeout"))));
                } else {
                    tVar.a((Object) element, element.getAttribute("path"));
                }
                NodeList elementsByTagName2 = element.getElementsByTagName("image");
                for (int i3 = 0; i3 < elementsByTagName2.getLength(); i3++) {
                    tVar.a(((Element) elementsByTagName2.item(i3)).getAttribute("src"));
                }
                NodeList elementsByTagName3 = element.getElementsByTagName("card");
                for (int i4 = 0; i4 < elementsByTagName3.getLength(); i4++) {
                    tVar.a(((Element) ((Element) elementsByTagName3.item(i4)).getElementsByTagName("image").item(0)).getAttribute("src"));
                }
            }
            if (i2 == 0) {
                tVar.a((PageInflater) fVar.a("page", element));
            }
        }
        return tVar;
    }
}
