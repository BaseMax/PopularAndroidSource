package f.a.a.d.a.a.b;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import f.a.a.d.a;
import f.a.a.d.f;
import f.a.a.e.b.X;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;
import org.w3c.dom.Element;

/* compiled from: VideoPageFactory */
public class B extends n {
    public PageInflater a() {
        return new X();
    }

    public void b(X x, Element element) {
        if (element.hasAttribute("skipBackstack")) {
            x.a(element.getAttribute("skipBackstack").toLowerCase().equals("true"));
        }
    }

    public final void c(X x, Element element) {
        if (element.hasAttribute("subtitle")) {
            x.d(element.getAttribute("subtitle"));
        }
    }

    public final void d(X x, Element element) {
        if (element.hasAttribute("logo")) {
            x.c(element.getAttribute("logo"));
        }
    }

    public final void e(X x, Element element) {
        if (element.hasAttribute(DefaultAppMeasurementEventListenerRegistrar.NAME)) {
            x.b(element.getAttribute(DefaultAppMeasurementEventListenerRegistrar.NAME));
        }
    }

    public final void f(X x, Element element) {
        if (element.hasAttribute("thumbnail")) {
            x.e(element.getAttribute("thumbnail"));
        }
    }

    public void g(X x, Element element) {
        if (element.hasAttribute("src")) {
            x.f(element.getAttribute("src"));
        }
    }

    public a a(Object obj, f fVar) {
        X x = (X) super.a(obj, fVar);
        Element element = (Element) obj;
        b(x, element);
        g(x, element);
        c(x, element);
        f(x, element);
        d(x, element);
        e(x, element);
        a(x, element);
        return x;
    }

    public final void a(X x, Element element) {
        if (element.hasAttribute("isOnline")) {
            x.b(Boolean.valueOf(element.getAttribute("isOnline")).booleanValue());
        }
    }
}
