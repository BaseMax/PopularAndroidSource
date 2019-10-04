package f.a.a.d.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: PreCacheFactory */
public class c implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        f.a.a.a.b.f fVar2 = new f.a.a.a.b.f();
        NodeList elementsByTagName = element.getElementsByTagName("page");
        for (int i2 = 0; i2 < elementsByTagName.getLength(); i2++) {
            Element element2 = (Element) elementsByTagName.item(i2);
            if (element2.hasAttribute("path")) {
                if (element2.hasAttribute("timeout")) {
                    fVar2.a(element2.getAttribute("path"), Integer.parseInt(element2.getAttribute("timeout")));
                } else {
                    fVar2.b(element2.getAttribute("path"));
                }
            }
        }
        NodeList elementsByTagName2 = element.getElementsByTagName("image");
        for (int i3 = 0; i3 < elementsByTagName2.getLength(); i3++) {
            Element element3 = (Element) elementsByTagName.item(i3);
            if (element3.hasAttribute("path")) {
                fVar2.a(element3.getAttribute("path"));
            }
        }
        return fVar2;
    }
}
