package f.a.a.d.a.a;

import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.g.g.e;
import ir.cafebazaar.inline.ux.permission.Permission;
import org.w3c.dom.Element;

/* compiled from: PermissionRequestFactory */
public class b implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        return new e(Permission.valueOf(element.getAttribute("permission")), element.getTextContent().trim());
    }
}
