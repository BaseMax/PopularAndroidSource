package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.a.b;
import cab.snapp.snappdialog.dialogViews.a.a;
import cab.snapp.snappdialog.dialogViews.a.c;

public class SnappCheckboxListDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    a f1493a = null;

    /* renamed from: b  reason: collision with root package name */
    b f1494b;
    AppCompatTextView c;
    RecyclerView d;

    public SnappCheckboxListDialogView(Context context) {
        super(context);
    }

    public SnappCheckboxListDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappCheckboxListDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappCheckboxListDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.checkbox_list_content_type;
    }

    public void setDirection(int i) {
        if (i == 1001) {
            this.c.setTextDirection(3);
            this.c.setGravity(3);
            return;
        }
        if (i == 1002) {
            this.c.setGravity(5);
            this.c.setTextDirection(4);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = (AppCompatTextView) findViewById(a.e.list_content_type_message);
        this.d = (RecyclerView) findViewById(a.e.list_content_type_recycler);
    }

    public void setData(c cVar) {
        this.f1493a = (cab.snapp.snappdialog.dialogViews.a.a) cVar;
        cab.snapp.snappdialog.dialogViews.a.a aVar = this.f1493a;
        if (this.c != null && aVar != null) {
            if (aVar.getMessage() != null && !aVar.getMessage().isEmpty()) {
                this.c.setVisibility(0);
                this.c.setText(aVar.getMessage());
            }
            if (aVar.getMessageList() != null && !aVar.getMessageList().isEmpty()) {
                this.f1494b = new b(getContext(), aVar.getMessageList(), aVar.getDefaultCheckedItemPosition(), aVar.getMultipleItemsSelectedListener());
                this.d.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
                this.d.setAdapter(this.f1494b);
            }
        }
    }
}
