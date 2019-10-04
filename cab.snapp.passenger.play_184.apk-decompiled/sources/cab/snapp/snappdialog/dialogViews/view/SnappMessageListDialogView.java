package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.a.a;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.h;

public class SnappMessageListDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    h f1510a = null;

    /* renamed from: b  reason: collision with root package name */
    a f1511b;
    AppCompatTextView c;
    RecyclerView d;

    public SnappMessageListDialogView(Context context) {
        super(context);
    }

    public SnappMessageListDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappMessageListDialogView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SnappMessageListDialogView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public static int getLayout() {
        return a.f.message_list_content_type;
    }

    public void setData(c cVar) {
        this.f1510a = (h) cVar;
        h hVar = this.f1510a;
        if (this.c != null && hVar != null) {
            if (hVar.getMessage() != null && !hVar.getMessage().isEmpty()) {
                this.c.setVisibility(0);
                this.c.setText(hVar.getMessage());
            }
            if (hVar.getMessageList() != null && !hVar.getMessageList().isEmpty()) {
                this.f1511b = new cab.snapp.snappdialog.a.a(getContext(), hVar.getMessageList());
                this.d.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
                this.d.setAdapter(this.f1511b);
            }
        }
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
}
