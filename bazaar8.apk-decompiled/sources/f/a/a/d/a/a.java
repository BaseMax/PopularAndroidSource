package f.a.a.d.a;

import com.crashlytics.android.Crashlytics;
import f.a.a.a.b.c;
import java.io.StringWriter;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Node;

/* compiled from: XMLPlatform */
class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f13993a;

    public a(b bVar) {
        this.f13993a = bVar;
    }

    public String a(String str) {
        return "page:" + str;
    }

    public String a(Object obj) {
        Node node = (Node) obj;
        StringWriter stringWriter = new StringWriter();
        try {
            TransformerFactory.newInstance().newTransformer().transform(new DOMSource(node), new StreamResult(stringWriter));
            return stringWriter.toString();
        } catch (TransformerConfigurationException e2) {
            Crashlytics.logException(e2);
            return null;
        } catch (TransformerException e3) {
            Crashlytics.logException(e3);
            return null;
        }
    }
}
