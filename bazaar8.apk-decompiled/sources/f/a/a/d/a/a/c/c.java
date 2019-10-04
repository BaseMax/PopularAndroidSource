package f.a.a.d.a.a.c;

import com.crashlytics.android.answers.SessionEventTransform;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import f.a.a.d.a;
import f.a.a.d.f;
import ir.cafebazaar.inline.ux.payment.iab.IABPaymentInfo;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* compiled from: IABPaymentInfoFactory */
public class c implements a.C0141a {
    public a a(Object obj, f fVar) {
        Element element = (Element) obj;
        IABPaymentInfo iABPaymentInfo = new IABPaymentInfo();
        for (int i2 = 0; i2 < element.getChildNodes().getLength(); i2++) {
            Node item = element.getChildNodes().item(i2);
            if (item.getNodeName().equals("meta")) {
                Element element2 = (Element) item;
                String attribute = element2.getAttribute(DefaultAppMeasurementEventListenerRegistrar.NAME);
                char c2 = 65535;
                switch (attribute.hashCode()) {
                    case -786701938:
                        if (attribute.equals("payload")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -172220347:
                        if (attribute.equals("callback")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 113949:
                        if (attribute.equals("sku")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 3575610:
                        if (attribute.equals(SessionEventTransform.TYPE_KEY)) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                if (c2 == 0) {
                    iABPaymentInfo.c(element2.getAttribute("value"));
                } else if (c2 == 1) {
                    iABPaymentInfo.b(element2.getAttribute("value"));
                } else if (c2 == 2) {
                    iABPaymentInfo.a(element2.getAttribute("value"));
                } else if (c2 == 3) {
                    iABPaymentInfo.d(element2.getAttribute(SessionEventTransform.TYPE_KEY));
                }
            }
        }
        return iABPaymentInfo;
    }
}
