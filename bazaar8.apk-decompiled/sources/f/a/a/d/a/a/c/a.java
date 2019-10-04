package f.a.a.d.a.a.c;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import f.a.a.d.a;
import f.a.a.d.f;
import ir.cafebazaar.inline.ux.IABConsumeInfo;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* compiled from: IABConsumeInfoFactory */
public class a implements a.C0141a {
    public f.a.a.d.a a(Object obj, f fVar) {
        Element element = (Element) obj;
        IABConsumeInfo iABConsumeInfo = new IABConsumeInfo();
        for (int i2 = 0; i2 < element.getChildNodes().getLength(); i2++) {
            Node item = element.getChildNodes().item(i2);
            if (item.getNodeName().equals("meta")) {
                Element element2 = (Element) item;
                String attribute = element2.getAttribute(DefaultAppMeasurementEventListenerRegistrar.NAME);
                char c2 = 65535;
                int hashCode = attribute.hashCode();
                if (hashCode != -786701938) {
                    if (hashCode != -172220347) {
                        if (hashCode == 110541305 && attribute.equals("token")) {
                            c2 = 0;
                        }
                    } else if (attribute.equals("callback")) {
                        c2 = 2;
                    }
                } else if (attribute.equals("payload")) {
                    c2 = 1;
                }
                if (c2 == 0) {
                    iABConsumeInfo.c(element2.getAttribute("value"));
                } else if (c2 == 1) {
                    iABConsumeInfo.b(element2.getAttribute("value"));
                } else if (c2 == 2) {
                    iABConsumeInfo.a(element2.getAttribute("value"));
                }
            }
        }
        return iABConsumeInfo;
    }
}
