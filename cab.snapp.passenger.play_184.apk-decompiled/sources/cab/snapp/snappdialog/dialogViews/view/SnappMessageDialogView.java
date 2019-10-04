package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.g;

public class SnappMessageDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    g f1508a = null;

    /* renamed from: b  reason: collision with root package name */
    AppCompatTextView f1509b;

    public SnappMessageDialogView(Context context) {
        super(context);
    }

    public SnappMessageDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappMessageDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappMessageDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.default_content_type;
    }

    public void setData(c cVar) {
        this.f1508a = (g) cVar;
        g gVar = this.f1508a;
        if (!(this.f1509b == null || gVar == null || gVar.getMessage() == null || gVar.getMessage().isEmpty())) {
            this.f1509b.setText(gVar.getMessage());
        }
        setDirection(this.f1508a.getDirection());
    }

    public void setDirection(int i) {
        if (i == 1001) {
            this.f1509b.setTextDirection(3);
            this.f1509b.setGravity(3);
            return;
        }
        if (i == 1002) {
            this.f1509b.setGravity(5);
            this.f1509b.setTextDirection(4);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1509b = (AppCompatTextView) findViewById(a.e.default_content_type_message);
    }
}
