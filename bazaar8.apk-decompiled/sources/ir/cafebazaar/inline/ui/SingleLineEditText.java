package ir.cafebazaar.inline.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;

public class SingleLineEditText extends AppCompatEditText implements TextView.OnEditorActionListener {

    /* renamed from: d  reason: collision with root package name */
    public a f14973d;

    interface a {
        void a();
    }

    public SingleLineEditText(Context context) {
        super(context);
        a();
    }

    public final void a() {
        setHorizontallyScrolling(false);
        setImeOptions(4);
        setRawInputType(1);
        setMaxLines(3);
        setOnEditorActionListener(this);
    }

    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return false;
        }
        if (this.f14973d != null && getText().toString().length() > 0) {
            this.f14973d.a();
        }
        return true;
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 66) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public void setSingleLineEditTextCommunicator(a aVar) {
        this.f14973d = aVar;
    }

    public SingleLineEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public SingleLineEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }
}
