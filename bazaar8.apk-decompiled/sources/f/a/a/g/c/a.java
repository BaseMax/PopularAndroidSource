package f.a.a.g.c;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import f.a.a.f.g;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: Comment */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final String f14433a = "date";

    /* renamed from: b  reason: collision with root package name */
    public final String f14434b = DefaultAppMeasurementEventListenerRegistrar.NAME;

    /* renamed from: c  reason: collision with root package name */
    public final String f14435c = "id";

    /* renamed from: d  reason: collision with root package name */
    public String f14436d;

    /* renamed from: e  reason: collision with root package name */
    public String f14437e;

    /* renamed from: f  reason: collision with root package name */
    public String f14438f;

    /* renamed from: g  reason: collision with root package name */
    public String f14439g;

    public a(Element element) {
        this.f14436d = element.getAttribute("date");
        this.f14437e = a(element);
        this.f14438f = element.getAttribute(DefaultAppMeasurementEventListenerRegistrar.NAME);
        this.f14439g = element.getAttribute("id");
    }

    public final String a(Element element) {
        NodeList childNodes = element.getChildNodes();
        if (childNodes.getLength() > 0) {
            return childNodes.item(0).getTextContent();
        }
        return null;
    }

    public String b() {
        return this.f14438f;
    }

    public String c() {
        return this.f14437e;
    }

    public String d() {
        return g.c(this.f14436d);
    }

    public String a() {
        return this.f14439g;
    }
}
