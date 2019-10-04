package cab.snapp.passenger.units.footer.driver_assigned_footer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.l;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.ae;

public class DriverAssignedFooterView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f748a;

    /* renamed from: b  reason: collision with root package name */
    private b f749b;
    @BindView(2131362095)
    View bottomButtonsLayout;
    private b c;
    @BindView(2131362096)
    AppCompatTextView cabTypeTextView;
    @BindView(2131362097)
    AppCompatTextView callDriverButton;
    private boolean d;
    @BindView(2131362614)
    ImageView driverAvatarImageView;
    @BindView(2131362099)
    AppCompatTextView driverNameTextView;
    @BindView(2131362616)
    View messageLayout;
    @BindView(2131362615)
    ImageView messageLayoutIconImageView;
    @BindView(2131362617)
    AppCompatTextView messageLayoutTextView;
    @BindView(2131362103)
    SnappLoading payCostLoading;
    @BindView(2131362102)
    AppCompatTextView payCostTextView;
    @BindView(2131362101)
    LinearLayout plateNumberLayout;
    @BindView(2131362613)
    View rootView;

    public DriverAssignedFooterView(Context context) {
        super(context);
    }

    public DriverAssignedFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DriverAssignedFooterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362102})
    public void onPayCostClicked() {
        this.f748a.onPayCostClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362097})
    public void onCallClicked() {
        this.f748a.onCallDriverClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362615})
    public void onMessageCloseBtnClicked() {
        showMessageOfDriverReallotment(false);
    }

    public ImageView getDriverAvatarImageView() {
        return this.driverAvatarImageView;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f748a = cVar;
    }

    public void changeviewStateToFailedToLoadDriverInfo() {
        this.bottomButtonsLayout.setBackgroundColor(getResources().getColor(R.color.brown_grey));
        this.callDriverButton.setEnabled(false);
        this.callDriverButton.setClickable(false);
        this.payCostTextView.setEnabled(false);
        this.callDriverButton.setClickable(false);
    }

    public void changeviewStateToSuccussfullLoadDriverInfo() {
        this.bottomButtonsLayout.setBackgroundColor(getResources().getColor(R.color.colorAccent));
        this.callDriverButton.setEnabled(true);
        this.callDriverButton.setClickable(true);
        this.payCostTextView.setEnabled(true);
        this.callDriverButton.setClickable(true);
    }

    public void showMessageOfDriverReallotment(boolean z) {
        if (!z || this.d) {
            this.messageLayout.setVisibility(8);
            this.messageLayoutTextView.setText("");
            return;
        }
        this.messageLayout.setVisibility(0);
        this.messageLayoutTextView.setText(getResources().getString(R.string.reallotment_driver_change_message));
        this.d = true;
    }

    public void setDriverName(String str) {
        this.driverNameTextView.setText(str);
    }

    public void setVehicleType(String str) {
        this.cabTypeTextView.setText(str);
    }

    public void displayRideIsFreeDialog() {
        if (getContext() != null) {
            this.c = new b.a(getContext()).setIconFont(R.string.ic_font_free_ride).setTheme(0).setDialogTitle((int) R.string.free_ride_new).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.enjoy_free_ride)).build()).setPositiveButton((int) R.string.ok, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    DriverAssignedFooterView.this.b(view);
                }
            }).setCancelable(true).showOnBuild(false).build();
            this.c.show();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b bVar = this.c;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void translateUpBaseView() {
        this.rootView.animate().translationY(0.0f).setDuration(250).setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    public void translateDownBaseView() {
        this.rootView.animate().translationY((float) this.rootView.getMeasuredHeight()).setStartDelay(100).setDuration(250).setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    public void loadDriverAvatar(int i) {
        if (getContext() != null) {
            Picasso.get().load(i).placeholder((int) R.drawable.ph_profile_picture).transform((ae) new l()).into(this.driverAvatarImageView);
        }
    }

    public void loadDriverAvatar(String str) {
        if (!(getContext() == null || str == null)) {
            Picasso.get().load(str).placeholder((int) R.drawable.ph_profile_picture).transform((ae) new l()).into(this.driverAvatarImageView);
        }
    }

    public void setPlateNumber(int i, boolean z, String str, String str2, String str3, String str4) {
        new SnappPlateNumberView.a(getContext()).setViewFrame(this.plateNumberLayout).setZoneType(i).setIsMotorcycle(z).setMainNumberPartA(str).setMainNumberPartB(str2).setIranId(str3).setMainCharacter(str4).build();
    }

    public void showPayCostLoading() {
        this.payCostLoading.setVisibility(0);
        this.payCostTextView.setVisibility(8);
    }

    public void hidePayCostLoading() {
        this.payCostLoading.setVisibility(8);
        this.payCostTextView.setVisibility(0);
    }

    public void showToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showReceiptFailedDialog() {
        a(null);
        this.f749b = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setTheme(0).isErrorInformation(true).setDialogTitle((int) R.string.server_connection_failed_label).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.server_connection_failed)).build()).setPositiveButton((int) R.string.close, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                DriverAssignedFooterView.this.a(view);
            }
        }).build();
        this.f749b.show();
    }

    /* access modifiers changed from: private */
    public void a(View view) {
        b bVar = this.f749b;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void dismissDialog() {
        a(null);
    }
}
