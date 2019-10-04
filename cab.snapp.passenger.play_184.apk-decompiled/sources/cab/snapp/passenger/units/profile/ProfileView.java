package cab.snapp.passenger.units.profile;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import cab.snapp.snappdialog.SnappControllerDialog;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.b;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappdialog.dialogViews.a.i;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.b.a;
import cab.snapp.snappuikit.c;
import java.util.ArrayList;

public class ProfileView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1029a;
    @BindView(2131362364)
    SnappEditText addressEditText;

    /* renamed from: b  reason: collision with root package name */
    protected b f1030b;
    @BindView(2131362365)
    SnappEditText birthdayEditText;
    protected b c;
    protected b d;
    protected b e;
    @BindView(2131362366)
    SnappEditText emailEditText;
    protected b f;
    protected SnappControllerDialog g;
    @BindView(2131362367)
    SnappEditText genderEditText;
    protected r h;
    private b i;
    @BindView(2131362368)
    SnappEditText nameEditText;
    @BindView(2131362369)
    SnappEditText phoneEditText;

    public ProfileView(Context context) {
        super(context);
    }

    public ProfileView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ProfileView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(MenuItem menuItem) {
        this.f1029a.onTickClicked();
        return true;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        this.f1029a.onBackClicked();
    }

    public void setNameText(String str) {
        this.nameEditText.setText(str);
    }

    public void setEmailText(String str) {
        this.emailEditText.setText(str);
    }

    public void setAddressText(String str) {
        this.addressEditText.setText(str);
    }

    public void setBirthdayText(String str) {
        this.birthdayEditText.setText(str);
    }

    public void setGenderText(String str) {
        this.genderEditText.setText(str);
    }

    public void setPhoneText(String str) {
        this.phoneEditText.setText("‎".concat(String.valueOf(str)));
    }

    public void setPhoneEditTextListener(a aVar) {
        this.phoneEditText.setSnappEditTextClickListener(aVar);
    }

    public void setEmailEditTextListener(a aVar) {
        this.emailEditText.setSnappEditTextClickListener(aVar);
    }

    public void setGenderEditTextListener(a aVar) {
        this.genderEditText.setSnappEditTextClickListener(aVar);
    }

    public void setWatchers(TextWatcher textWatcher, TextWatcher textWatcher2) {
        this.nameEditText.addTextChangedListener(textWatcher);
        this.addressEditText.addTextChangedListener(textWatcher2);
    }

    public void showNormalEmailEditText() {
        this.emailEditText.showInActive();
    }

    public void showResendEmailActionButton() {
        this.emailEditText.showActionButton();
    }

    public void showApprovedEmailEditText() {
        this.emailEditText.showApproved();
    }

    public void hideResendEmailActionButton() {
        this.emailEditText.hideActionButton();
    }

    public void setBirthdayEditTextListener(a aVar) {
        this.birthdayEditText.setSnappEditTextClickListener(aVar);
    }

    public void showMessage(String str, int i2) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i2)).show();
        }
    }

    public b showErrorDialog(String str) {
        b bVar = this.f1030b;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f1030b.dismiss();
            }
            this.f1030b.cancel();
        }
        this.f1030b = new b.a(getContext()).setIconFont(R.string.ic_font_block).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                ProfileView.this.d(view);
            }
        }).showOnBuild(true).build();
        return this.f1030b;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        this.f1030b.dismiss();
    }

    public b showMessageDialog(String str) {
        b bVar = this.c;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.c.dismiss();
            }
            this.c.cancel();
        }
        this.c = new b.a(getContext()).setIcon(R.drawable.ic_email_verify).setDialogTitle(getContext().getString(R.string.email_verifcation)).setTheme(0).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.got_it), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                ProfileView.this.c(view);
            }
        }).showOnBuild(true).build();
        return this.c;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.c.dismiss();
    }

    public void hideLoadingDialog() {
        r rVar = this.h;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showLoadingDialog() {
        r rVar = this.h;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public b showEmailEditDialog(TextWatcher textWatcher, View.OnClickListener onClickListener) {
        if (getContext() == null) {
            return null;
        }
        dismissEmailEditDialog();
        this.d = new b.a(getContext()).setIcon(R.drawable.ic_email_verify).setDialogTitle((int) R.string.profile_enter_your_email_address).dismissOnButtonClick(402).setDialogViewType(new d.a().setMessage(getContext().getString(R.string.snapp_need_your_email)).setFirstEtTextWatcher(textWatcher).setFirstEditTextHint(getContext().getString(R.string.view_sign_up_email_hint)).build()).setNegativeButtonText((int) R.string.close).setPositiveButton((int) R.string.send, onClickListener).showOnBuild(true).build();
        return this.d;
    }

    public void dismissEmailEditDialog() {
        b bVar = this.d;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.d.dismiss();
            }
            this.d.cancel();
        }
    }

    public SnappControllerDialog showPhoneVerificationUnitAsDialog(PhoneVerificationController phoneVerificationController, FragmentManager fragmentManager) {
        dismissPhoneVerificationUnitDialog();
        this.g = new SnappControllerDialog.a().setController(phoneVerificationController).setFragmentManager(fragmentManager).showOnBuild(true).build();
        return this.g;
    }

    public void dismissPhoneVerificationUnitDialog() {
        SnappControllerDialog snappControllerDialog = this.g;
        if (snappControllerDialog != null) {
            snappControllerDialog.dismiss();
        }
    }

    public void showGenderDialog(ArrayList<String> arrayList, cab.snapp.snappdialog.b.d dVar, View.OnClickListener onClickListener) {
        dismissGenderDialog();
        this.e = new b.a(getContext()).setIcon(R.drawable.ic_gender).setDialogTitle((int) R.string.select_gender).setTheme(0).setDialogViewType(new i.a().setMessageList(arrayList).setSingleItemSelectedListener(dVar).build()).setPositiveButton((int) R.string.choose, onClickListener).showOnBuild(true).build();
    }

    public void dismissGenderDialog() {
        b bVar = this.e;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.e.dismiss();
            }
            this.e.cancel();
        }
    }

    public void showBirthdayDialog(b.C0027b bVar, View.OnClickListener onClickListener) {
        dismissBirthdayDialog();
        this.f = new b.a(getContext()).setTheme(0).setDialogViewType(new b.a().setOnDateSelectedListener(bVar).build()).setPositiveButton((int) R.string.ok, onClickListener).showOnBuild(true).build();
    }

    public void dismissBirthdayDialog() {
        cab.snapp.snappdialog.b bVar = this.f;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f.dismiss();
            }
            this.f.cancel();
        }
    }

    public void showMessage(int i2) {
        if (getContext() != null) {
            showMessage(getContext().getString(i2), R.color.cherry);
        }
    }

    public void changePhoneEditTextGravityBasedOnLocale(boolean z) {
        if (z) {
            this.phoneEditText.getEditTextView().setGravity(GravityCompat.END);
        } else {
            this.phoneEditText.getEditTextView().setGravity(GravityCompat.START);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.h = new r(getContext());
        c cVar = new c(this);
        cVar.setTitle((int) R.string.profile_toolbar_title);
        cVar.setMenu(R.menu.menu_tick, new Toolbar.OnMenuItemClickListener() {
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return ProfileView.this.a(menuItem);
            }
        });
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                ProfileView.this.e(view);
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f1029a = cVar;
    }

    public void hideKeyboard() {
        SnappEditText snappEditText = this.nameEditText;
        if (snappEditText != null && snappEditText.getContext() != null) {
            cab.snapp.c.c.hideKeyboard(this.nameEditText.getContext(), this.nameEditText);
        }
    }

    public void showApWalletUnlinkWarningDialog() {
        cab.snapp.snappdialog.b bVar = this.i;
        if (bVar != null) {
            bVar.show();
            return;
        }
        this.i = new b.a(getContext()).setDialogTitle((int) R.string.ap_wallet_change_title).setDialogViewType(new g.a().setMessage(getResources().getString(R.string.ap_wallet_change_description)).build()).setIcon(R.drawable.ic_ap_wallet).setPositiveButton((int) R.string.default_wallet_confirmation, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                ProfileView.this.b(view);
            }
        }).setNegativeButton((int) R.string.close, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                ProfileView.this.a(view);
            }
        }).build();
        this.i.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        hideApWalletUnlinkWarningDialog();
        this.f1029a.confirmApWalletUnlink();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        hideApWalletUnlinkWarningDialog();
    }

    public void hideApWalletUnlinkWarningDialog() {
        cab.snapp.snappdialog.b bVar = this.i;
        if (bVar != null) {
            bVar.dismiss();
        }
    }
}
