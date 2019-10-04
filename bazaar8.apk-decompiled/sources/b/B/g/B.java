package b.b.g;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import b.i.j.h;

/* compiled from: AppCompatTextClassifierHelper */
public final class B {

    /* renamed from: a  reason: collision with root package name */
    public TextView f2008a;

    /* renamed from: b  reason: collision with root package name */
    public TextClassifier f2009b;

    public B(TextView textView) {
        h.a(textView);
        this.f2008a = textView;
    }

    public void a(TextClassifier textClassifier) {
        this.f2009b = textClassifier;
    }

    public TextClassifier a() {
        TextClassifier textClassifier = this.f2009b;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f2008a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier = TextClassifier.NO_OP;
        }
        return textClassifier;
    }
}
