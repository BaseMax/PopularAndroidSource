package cab.snapp.passenger.units.ticket;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.b;
import cab.snapp.snappuikit.c;

public class TicketView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1330a;
    @BindView(2131362984)
    AppCompatTextView issueCharCounterTv;
    @BindView(2131362985)
    AppCompatEditText issueDescEt;
    @BindView(2131362987)
    AppCompatTextView rideAddressTv;
    @BindView(2131362988)
    LinearLayout rideInfoLayout;
    @BindView(2131362989)
    AppCompatTextView rideTitleAndCodeTv;
    @BindView(2131362986)
    SnappButton sendTicketBtn;
    @BindView(2131362983)
    AppCompatTextView ticketDescTv;
    @BindView(2131362990)
    AppCompatTextView ticketTitleTv;

    public TicketView(Context context) {
        super(context);
    }

    public TicketView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TicketView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362986})
    public void onSendTicketClicked() {
        c cVar = this.f1330a;
        if (cVar != null) {
            cVar.onSendTicketClicked();
        }
    }

    public void setTicketTitle(String str) {
        this.ticketTitleTv.setText(str);
    }

    public void setTicketDescription(String str) {
        this.ticketDescTv.setText(str);
    }

    public void showRideInfoLayout() {
        this.rideInfoLayout.setVisibility(0);
    }

    public void hideRideInfoLayout() {
        this.rideInfoLayout.setVisibility(8);
    }

    public void setRideTitleAndCode(String str) {
        this.rideTitleAndCodeTv.setText(str);
    }

    public void setRideAddress(String str) {
        this.rideAddressTv.setText(str);
    }

    public void setIssueDescCount(String str) {
        this.issueCharCounterTv.setText(str);
    }

    public void setIssueDescEtTextWatcher(TextWatcher textWatcher) {
        this.issueDescEt.addTextChangedListener(textWatcher);
    }

    public String getIssueDescription() {
        if (this.issueDescEt.getText() == null) {
            return null;
        }
        return this.issueDescEt.getText().toString();
    }

    public EditText getIssueDescEt() {
        return this.issueDescEt;
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        c cVar = new c(this);
        cVar.setTitle((int) R.string.support);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                TicketView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.f1330a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    public void setPresenter(c cVar) {
        this.f1330a = cVar;
    }
}
