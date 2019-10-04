package ir.cafebazaar.inline.ux.flow.actions;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.crashlytics.android.Crashlytics;
import f.a.a.e.g;

public class SpeechRecognizeAction extends CallbackRemoteAction {
    public static final Parcelable.Creator<SpeechRecognizeAction> CREATOR = new r();

    /* renamed from: d  reason: collision with root package name */
    public EditText f15067d;

    public SpeechRecognizeAction(Parcel parcel) {
        super(parcel);
    }

    public void a(g gVar, View view) {
        super.a(gVar, view);
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.LANGUAGE", "fa");
        intent.putExtra("android.speech.extra.LANGUAGE_PREFERENCE", "fa");
        intent.putExtra("android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE", "fa");
        intent.putExtra("android.speech.extra.PROMPT", "");
        try {
            gVar.f().startActivityForResult(intent, 9);
        } catch (ActivityNotFoundException e2) {
            Crashlytics.logException(e2);
            Toast.makeText(gVar.f(), gVar.f().getString(f.a.a.g.voice_search_not_supported), 0).show();
        }
    }

    public boolean a(int i2) {
        return i2 == 9;
    }

    public SpeechRecognizeAction(EditText editText) {
        super("", false, false);
        this.f15067d = editText;
    }

    public void a(g gVar, int i2, Intent intent, Parcelable parcelable) {
        if (i2 == -1 && intent != null) {
            String str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            EditText editText = this.f15067d;
            if (editText != null) {
                editText.setText(str);
            }
        }
    }
}
