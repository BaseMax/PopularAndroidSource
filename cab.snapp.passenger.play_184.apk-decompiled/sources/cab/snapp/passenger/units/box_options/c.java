package cab.snapp.passenger.units.box_options;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CompoundButton;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.BoxOptions;

public final class c extends BasePresenter<BoxOptionsView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected TextWatcher f609a = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (c.this.getInteractor() != null) {
                ((a) c.this.getInteractor()).updateFullName(charSequence.toString());
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    protected TextWatcher f610b = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (c.this.getInteractor() != null) {
                ((a) c.this.getInteractor()).updateMobile(charSequence.toString());
            }
        }
    };
    protected TextWatcher c = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (c.this.getInteractor() != null) {
                ((a) c.this.getInteractor()).updateDescription(charSequence.toString());
            }
        }
    };
    protected TextWatcher d = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (c.this.getInteractor() != null) {
                ((a) c.this.getInteractor()).updateAddress(charSequence.toString());
            }
        }
    };
    protected CompoundButton.OnCheckedChangeListener e = new CompoundButton.OnCheckedChangeListener() {
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            c.this.a(compoundButton, z);
        }
    };

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        if (getInteractor() != null) {
            ((a) getInteractor()).updateCashByRecipient(z);
        }
    }

    public final void onInitialize(BoxOptions boxOptions, String str) {
        if (this.view != null) {
            ((BoxOptionsView) this.view).setFullNameTextChangeListener(this.f609a);
            ((BoxOptionsView) this.view).setMobileTextChangeListener(this.f610b);
            ((BoxOptionsView) this.view).setDescriptionTextChangeListener(this.c);
            ((BoxOptionsView) this.view).setAddressTextChangeListener(this.d);
            ((BoxOptionsView) this.view).setCashByRecipientCheckBoxListener(this.e);
            if (boxOptions != null) {
                ((BoxOptionsView) this.view).setFullNameText(boxOptions.getFullName());
                ((BoxOptionsView) this.view).setDescriptionText(boxOptions.getDescription());
                ((BoxOptionsView) this.view).setMobileText(boxOptions.getPhoneNumber());
                ((BoxOptionsView) this.view).setCashByRecipientCheckBoxChecked(boxOptions.isPaidByRecipient());
                if (boxOptions.getAddress() != null) {
                    ((BoxOptionsView) this.view).setAddressText(boxOptions.getAddress());
                } else {
                    ((BoxOptionsView) this.view).setAddressText(str);
                }
            } else {
                ((BoxOptionsView) this.view).setAddressText(str);
            }
        }
    }
}
