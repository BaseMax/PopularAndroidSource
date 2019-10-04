package f.a.a.d.a.a.b;

import com.crashlytics.android.core.CrashlyticsController;
import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.d.g;
import org.w3c.dom.Element;

/* compiled from: ValidationFactory */
public class y implements a.C0141a {
    public a a(Object obj, f fVar) {
        g gVar = new g();
        Element element = (Element) obj;
        b(gVar, element);
        a(gVar, element);
        return gVar;
    }

    public void b(g gVar, Element element) {
        if (element.hasAttribute("regex")) {
            gVar.b(element.getAttribute("regex"));
        }
    }

    public void a(g gVar, Element element) {
        if (element.hasAttribute(CrashlyticsController.EVENT_TYPE_LOGGED)) {
            gVar.a(element.getAttribute(CrashlyticsController.EVENT_TYPE_LOGGED));
        }
    }
}
