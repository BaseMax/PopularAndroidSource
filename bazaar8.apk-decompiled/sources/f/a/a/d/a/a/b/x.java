package f.a.a.d.a.a.b;

import com.crashlytics.android.Crashlytics;
import f.a.a.d.f;
import f.a.a.e.b.C1072n;
import ir.cafebazaar.inline.ui.inflaters.TextInflater;
import java.io.StringWriter;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* compiled from: TextFactory */
public class x extends i {
    public C1072n a(Element element, f fVar) {
        TextInflater textInflater = new TextInflater();
        b(textInflater, element);
        a(textInflater, element);
        return textInflater;
    }

    public void b(TextInflater textInflater, Element element) {
        textInflater.c(a(element));
    }

    public void a(TextInflater textInflater, Element element) {
        if (element.hasAttribute("style")) {
            textInflater.a(TextInflater.Style.valueOf(element.getAttribute("style")));
        }
    }

    public static String a(Node node) {
        StringWriter stringWriter = new StringWriter();
        StreamResult streamResult = new StreamResult(stringWriter);
        NodeList childNodes = node.getChildNodes();
        try {
            Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
            newTransformer.setOutputProperty("omit-xml-declaration", "yes");
            newTransformer.setOutputProperty("indent", "yes");
            for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
                newTransformer.transform(new DOMSource(childNodes.item(i2)), streamResult);
            }
        } catch (TransformerException e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
        }
        return stringWriter.toString();
    }
}
