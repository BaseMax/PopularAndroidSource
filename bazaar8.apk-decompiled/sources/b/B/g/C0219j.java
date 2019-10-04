package b.b.g;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import android.widget.TextView;
import b.b.b.a.a;
import b.i.l.j;

/* renamed from: b.b.g.j  reason: case insensitive filesystem */
/* compiled from: AppCompatCheckedTextView */
public class C0219j extends CheckedTextView {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2180a = {16843016};

    /* renamed from: b  reason: collision with root package name */
    public final C f2181b;

    public C0219j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16843720);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C c2 = this.f2181b;
        if (c2 != null) {
            c2.a();
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0223n.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    public void setCheckMarkDrawable(int i2) {
        setCheckMarkDrawable(a.c(getContext(), i2));
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(j.a((TextView) this, callback));
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f2181b;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public C0219j(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f2181b = new C(this);
        this.f2181b.a(attributeSet, i2);
        this.f2181b.a();
        pa a2 = pa.a(getContext(), attributeSet, f2180a, i2, 0);
        setCheckMarkDrawable(a2.b(0));
        a2.a();
    }
}
