package cab.snapp.snappdialog.dialogViews.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import cab.snapp.snappdialog.a;
import cab.snapp.snappdialog.dialogViews.a.c;
import cab.snapp.snappdialog.dialogViews.a.d;

public class SnappInputTextDialogView extends SnappDialogViewType {

    /* renamed from: a  reason: collision with root package name */
    d f1500a = null;

    /* renamed from: b  reason: collision with root package name */
    AppCompatTextView f1501b;
    AppCompatTextView c;
    AppCompatEditText d;
    AppCompatTextView e;
    AppCompatEditText f;
    LinearLayout g;
    CheckBox h;
    AppCompatTextView i;

    public SnappInputTextDialogView(Context context) {
        super(context);
    }

    public SnappInputTextDialogView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SnappInputTextDialogView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    public SnappInputTextDialogView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }

    public static int getLayout() {
        return a.f.input_text_content_type;
    }

    public void setDirection(int i2) {
        if (i2 == 1001) {
            this.f1501b.setTextDirection(3);
            this.f1501b.setGravity(3);
            return;
        }
        if (i2 == 1002) {
            this.f1501b.setGravity(5);
            this.f1501b.setTextDirection(4);
        }
    }

    public void setData(c cVar) {
        this.f1500a = (d) cVar;
        d dVar = this.f1500a;
        if (this.f1501b != null && dVar != null) {
            if (dVar.getMessage() != null && !dVar.getMessage().isEmpty()) {
                this.f1501b.setVisibility(0);
                this.f1501b.setText(dVar.getMessage());
            }
            if (dVar.getFirstEtTitle() != null && !dVar.getFirstEtTitle().isEmpty()) {
                this.c.setVisibility(0);
                this.c.setText(dVar.getFirstEtTitle());
            }
            if (dVar.getFirstEtHint() != null && !dVar.getFirstEtHint().isEmpty()) {
                this.d.setVisibility(0);
                this.d.setHint(dVar.getFirstEtHint());
            }
            if (dVar.getFirstEtText() != null && !dVar.getFirstEtText().isEmpty()) {
                this.d.setVisibility(0);
                this.d.setText(dVar.getFirstEtText());
            }
            if (dVar.getFirstEtTextWatcher() != null) {
                this.d.setVisibility(0);
                this.d.addTextChangedListener(dVar.getFirstEtTextWatcher());
            }
            if (dVar.getSecondEtTitle() != null && !dVar.getSecondEtTitle().isEmpty()) {
                this.e.setVisibility(0);
                this.e.setText(dVar.getSecondEtTitle());
            }
            if (dVar.getSecondEtHint() != null && !dVar.getSecondEtHint().isEmpty()) {
                this.f.setVisibility(0);
                this.f.setHint(dVar.getSecondEtHint());
            }
            if (dVar.getSecondEtText() != null && !dVar.getSecondEtText().isEmpty()) {
                this.f.setVisibility(0);
                this.f.setText(dVar.getSecondEtText());
            }
            if (dVar.getSecondEtTextWatcher() != null) {
                this.f.setVisibility(0);
                this.f.addTextChangedListener(dVar.getSecondEtTextWatcher());
            }
            if (dVar.getCheckboxText() != null && !dVar.getCheckboxText().isEmpty()) {
                this.g.setVisibility(0);
                this.i.setText(dVar.getCheckboxText());
            }
            if (dVar.isCheckboxIsChecked()) {
                this.h.setChecked(true);
            } else {
                this.h.setChecked(false);
            }
            if (this.g.getVisibility() == 0) {
                this.h.setOnCheckedChangeListener(dVar.getCheckedChangeListener());
            }
            if (this.i.getVisibility() == 0) {
                this.i.setOnClickListener(new View.OnClickListener() {
                    public final void onClick(View view) {
                        SnappInputTextDialogView.this.h.performClick();
                    }
                });
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1501b = (AppCompatTextView) findViewById(a.e.input_text_content_type_message);
        this.c = (AppCompatTextView) findViewById(a.e.input_text_content_type_et_title_first);
        this.d = (AppCompatEditText) findViewById(a.e.input_text_content_type_et_first);
        this.e = (AppCompatTextView) findViewById(a.e.input_text_content_type_et_title_second);
        this.f = (AppCompatEditText) findViewById(a.e.input_text_content_type_et_second);
        this.g = (LinearLayout) findViewById(a.e.input_text_content_type_checkbox_layout);
        this.h = (CheckBox) findViewById(a.e.input_text_content_type_checkbox);
        this.i = (AppCompatTextView) findViewById(a.e.input_text_content_type_checkbox_title);
    }
}
