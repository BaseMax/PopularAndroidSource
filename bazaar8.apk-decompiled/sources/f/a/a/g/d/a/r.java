package f.a.a.g.d.a;

import android.os.Parcel;
import android.os.Parcelable;
import ir.cafebazaar.inline.ux.flow.actions.SpeechRecognizeAction;

/* compiled from: SpeechRecognizeAction */
class r implements Parcelable.Creator<SpeechRecognizeAction> {
    public SpeechRecognizeAction createFromParcel(Parcel parcel) {
        return new SpeechRecognizeAction(parcel);
    }

    public SpeechRecognizeAction[] newArray(int i2) {
        return new SpeechRecognizeAction[i2];
    }
}
