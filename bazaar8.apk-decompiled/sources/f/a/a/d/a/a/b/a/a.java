package f.a.a.d.a.a.b.a;

import com.crashlytics.android.answers.SessionEventTransform;
import f.a.a.d.f;
import ir.cafebazaar.inline.ui.inflaters.inputs.AddressInputInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;
import org.w3c.dom.Element;

/* compiled from: AddressInputFactory */
public class a extends d {
    public ControllableInputInflater b(Element element, f fVar) {
        AddressInputInflater addressInputInflater = new AddressInputInflater();
        AddressInputInflater.AddressType a2 = AddressInputInflater.AddressType.a(element.getAttribute(SessionEventTransform.TYPE_KEY));
        if (a2 == null) {
            a2 = AddressInputInflater.AddressType.ADDRESS;
        }
        addressInputInflater.a(a2);
        return addressInputInflater;
    }
}
