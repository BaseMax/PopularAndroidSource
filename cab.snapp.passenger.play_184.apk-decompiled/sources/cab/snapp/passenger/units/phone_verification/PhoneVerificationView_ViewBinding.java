package cab.snapp.passenger.units.phone_verification;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappEditText;

public class PhoneVerificationView_ViewBinding implements Unbinder {
    private PhoneVerificationView target;
    private View view7f0a03da;
    private View view7f0a03db;
    private View view7f0a03dd;

    public PhoneVerificationView_ViewBinding(PhoneVerificationView phoneVerificationView) {
        this(phoneVerificationView, phoneVerificationView);
    }

    public PhoneVerificationView_ViewBinding(final PhoneVerificationView phoneVerificationView, View view) {
        this.target = phoneVerificationView;
        phoneVerificationView.titleTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_title_tv, "field 'titleTv'", AppCompatTextView.class);
        phoneVerificationView.mainDescTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_desc_text_tv, "field 'mainDescTv'", AppCompatTextView.class);
        phoneVerificationView.enterPhoneNumberEt = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_enter_number_et, "field 'enterPhoneNumberEt'", SnappEditText.class);
        phoneVerificationView.enterVerificationCodeEt = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_enter_code_et, "field 'enterVerificationCodeEt'", SnappEditText.class);
        phoneVerificationView.codeExpireTimeTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_code_expire_timer_tv, "field 'codeExpireTimeTv'", AppCompatTextView.class);
        phoneVerificationView.resendBtnAreaLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_phone_verification_resend_btn_area_linear, "field 'resendBtnAreaLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_phone_verification_resend_code_by_sms_btn, "field 'resendCodeBySmsBtn' and method 'onResendBySmsClicked'");
        phoneVerificationView.resendCodeBySmsBtn = (AppCompatTextView) Utils.castView(findRequiredView, R.id.view_phone_verification_resend_code_by_sms_btn, "field 'resendCodeBySmsBtn'", AppCompatTextView.class);
        this.view7f0a03dd = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                phoneVerificationView.onResendBySmsClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_phone_verification_positive_btn_text_view, "field 'positiveBtnTextView' and method 'onPositiveBtnClicked'");
        phoneVerificationView.positiveBtnTextView = (TextView) Utils.castView(findRequiredView2, R.id.view_phone_verification_positive_btn_text_view, "field 'positiveBtnTextView'", TextView.class);
        this.view7f0a03db = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                phoneVerificationView.onPositiveBtnClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_phone_verification_negative_btn_text_view, "field 'negativeBtnTextView' and method 'onNegativeBtnClicked'");
        phoneVerificationView.negativeBtnTextView = (AppCompatTextView) Utils.castView(findRequiredView3, R.id.view_phone_verification_negative_btn_text_view, "field 'negativeBtnTextView'", AppCompatTextView.class);
        this.view7f0a03da = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                phoneVerificationView.onNegativeBtnClicked();
            }
        });
    }

    public void unbind() {
        PhoneVerificationView phoneVerificationView = this.target;
        if (phoneVerificationView != null) {
            this.target = null;
            phoneVerificationView.titleTv = null;
            phoneVerificationView.mainDescTv = null;
            phoneVerificationView.enterPhoneNumberEt = null;
            phoneVerificationView.enterVerificationCodeEt = null;
            phoneVerificationView.codeExpireTimeTv = null;
            phoneVerificationView.resendBtnAreaLayout = null;
            phoneVerificationView.resendCodeBySmsBtn = null;
            phoneVerificationView.positiveBtnTextView = null;
            phoneVerificationView.negativeBtnTextView = null;
            this.view7f0a03dd.setOnClickListener(null);
            this.view7f0a03dd = null;
            this.view7f0a03db.setOnClickListener(null);
            this.view7f0a03db = null;
            this.view7f0a03da.setOnClickListener(null);
            this.view7f0a03da = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
