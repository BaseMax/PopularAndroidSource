package cab.snapp.passenger.units.box_options;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ScrollView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.snappuikit.SnappCheckBox;

public class BoxOptionsView extends ScrollView implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f602a;
    @BindView(2131362599)
    EditText addressEditText;
    @BindView(2131362600)
    SnappCheckBox cashByRecipientCheckBox;
    @BindView(2131362602)
    EditText descEditText;
    @BindView(2131362603)
    EditText fullNameEditText;
    @BindView(2131362604)
    EditText mobileEditText;

    public BoxOptionsView(Context context) {
        super(context);
    }

    public BoxOptionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BoxOptionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362598})
    public void onContainerClicked(View view) {
        c.hideKeyboard(getContext(), view);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setFullNameTextChangeListener(TextWatcher textWatcher) {
        this.fullNameEditText.addTextChangedListener(textWatcher);
    }

    public void setAddressTextChangeListener(TextWatcher textWatcher) {
        this.addressEditText.addTextChangedListener(textWatcher);
    }

    public void setDescriptionTextChangeListener(TextWatcher textWatcher) {
        this.descEditText.addTextChangedListener(textWatcher);
    }

    public void setMobileTextChangeListener(TextWatcher textWatcher) {
        this.mobileEditText.addTextChangedListener(textWatcher);
    }

    public void setCashByRecipientCheckBoxListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.cashByRecipientCheckBox.setOnCheckedChangeListener(onCheckedChangeListener);
    }

    public void setFullNameText(String str) {
        this.fullNameEditText.setText(str);
    }

    public void setAddressText(String str) {
        this.addressEditText.setText(str);
    }

    public void setDescriptionText(String str) {
        this.descEditText.setText(str);
    }

    public void setMobileText(String str) {
        this.mobileEditText.setText(str);
    }

    public void setCashByRecipientCheckBoxChecked(boolean z) {
        this.cashByRecipientCheckBox.setChecked(z);
    }

    public void setPresenter(c cVar) {
        this.f602a = cVar;
    }
}
