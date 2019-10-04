package f.a.a.e;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import com.crashlytics.android.Crashlytics;
import f.a.a.d.a;
import f.a.a.d.a.b;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.f;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* compiled from: InlineViewCreator */
public class s {
    public static View a(h hVar, String str) {
        View view = null;
        try {
            b bVar = new b();
            Object a2 = bVar.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8")));
            LayoutInflater from = LayoutInflater.from(hVar.getApplicationContext());
            view = from.inflate(f.inline_view_group, null);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(e.viewGroup);
            for (C1072n a3 : a((Element) ((Document) a2).getElementsByTagName("view").item(0), (f.a.a.d.f) bVar)) {
                linearLayout.addView(a3.a(from, linearLayout, hVar));
            }
        } catch (Exception e2) {
            Crashlytics.logException(e2);
        }
        return view;
    }

    public static List<C1072n> a(Element element, f.a.a.d.f fVar) {
        NodeList childNodes = element.getChildNodes();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            a a2 = fVar.a(childNodes.item(i2).getNodeName(), childNodes.item(i2));
            if (a2 != null && (a2 instanceof C1072n)) {
                arrayList.add((C1072n) a2);
            }
        }
        return arrayList;
    }
}
