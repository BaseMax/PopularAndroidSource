package cab.snapp.passenger.units.ride_history_details;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.i;
import cab.snapp.passenger.f.l;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.c;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.ae;

public class RideHistoryDetailsView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1084a;

    /* renamed from: b  reason: collision with root package name */
    private c f1085b;
    @BindView(2131362798)
    View buttonsDivider;
    @BindView(2131362797)
    LinearLayout buttonsLayout;
    @BindView(2131362799)
    AppCompatTextView destinationAddressTv;
    @BindView(2131362800)
    LinearLayout destinationLayout;
    @BindView(2131362801)
    SnappButton downloadReceiptBtn;
    @BindView(2131362802)
    ImageView driverImageIv;
    @BindView(2131362803)
    LinearLayout driverNameLayout;
    @BindView(2131362804)
    AppCompatTextView driverNameTv;
    @BindView(2131362807)
    ImageView mapIv;
    @BindView(2131362808)
    AppCompatTextView originAddressTv;
    @BindView(2131362809)
    LinearLayout originLayout;
    @BindView(2131362810)
    LinearLayout parcelLayout;
    @BindView(2131362822)
    FrameLayout rateLayout;
    @BindView(2131362823)
    AppCompatTextView rateRideTv;
    @BindView(2131362812)
    RecyclerView rideDetailsRecycler;
    @BindView(2131362811)
    RatingBar rideRatingBar;
    @BindView(2131362813)
    LinearLayout roundTripLayout;
    @BindView(2131362814)
    AppCompatTextView secondDestinationAddressTv;
    @BindView(2131362815)
    LinearLayout secondDestinationLayout;
    @BindView(2131362816)
    SnappButton supportBtn;
    @BindView(2131362817)
    AppCompatTextView vehicleModelLabelTv;
    @BindView(2131362818)
    LinearLayout vehicleModelLayout;
    @BindView(2131362819)
    AppCompatTextView vehicleModelTv;
    @BindView(2131362820)
    LinearLayout waitingLayout;
    @BindView(2131362821)
    AppCompatTextView waitingTv;

    public RideHistoryDetailsView(Context context) {
        super(context);
    }

    public RideHistoryDetailsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RideHistoryDetailsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362823})
    public void onRateRideClick() {
        c cVar = this.f1084a;
        if (cVar != null) {
            cVar.onRateRideClicked();
        }
    }

    @OnClick({2131362816})
    public void onSupportClicked() {
        c cVar = this.f1084a;
        if (cVar != null) {
            cVar.onSupportClicked();
        }
    }

    @OnClick({2131362801})
    public void onDownloadReceiptClicked() {
        c cVar = this.f1084a;
        if (cVar != null) {
            cVar.onDownloadRideReceiptClicked();
        }
    }

    public void setToolbarTitle(String str) {
        this.f1085b.setTitle(str);
    }

    public void showRateLayout() {
        this.rateLayout.setVisibility(0);
    }

    public void showRideRatingBar() {
        this.rideRatingBar.setVisibility(0);
    }

    public void showRateRideButton() {
        this.rateRideTv.setVisibility(0);
    }

    public void hideRateLayout() {
        this.rateLayout.setVisibility(8);
    }

    public void hideRideRatingBar() {
        this.rideRatingBar.setVisibility(8);
    }

    public void hideRateRideButton() {
        this.rateRideTv.setVisibility(8);
    }

    public void disableDownloadReceiptButton() {
        this.downloadReceiptBtn.setEnabled(false);
        this.downloadReceiptBtn.setTextAlpha(0.3f);
        this.downloadReceiptBtn.setIconStartAlpha(0.3f);
        this.downloadReceiptBtn.setIconEndAlpha(0.3f);
        this.buttonsDivider.setVisibility(4);
    }

    public void enableDownloadReceiptButton() {
        this.downloadReceiptBtn.setEnabled(true);
        this.downloadReceiptBtn.setTextAlpha(1.0f);
        this.downloadReceiptBtn.setIconStartAlpha(1.0f);
        this.downloadReceiptBtn.setIconEndAlpha(1.0f);
        this.buttonsDivider.setVisibility(0);
    }

    public void setDriverName(String str) {
        this.driverNameTv.setText(str);
    }

    public void setVehicleModel(String str) {
        this.vehicleModelTv.setText(str);
    }

    public void setOriginAddress(String str) {
        this.originAddressTv.setText(str);
    }

    public void setDestinationAddress(String str) {
        this.destinationAddressTv.setText(str);
    }

    public void setRating(int i) {
        this.rideRatingBar.setRating((float) i);
    }

    public void setVehicleModelLabel(int i) {
        this.vehicleModelLabelTv.setText(i);
    }

    public void showTopMapImage(String str, int i, int i2) {
        if (!(getContext() == null || str == null || TextUtils.isEmpty(str))) {
            Picasso.get().load(str).fit().centerCrop().placeholder(i).error(i2).into(this.mapIv);
        }
    }

    public void showDriverImage(String str, int i, int i2) {
        if (getContext() != null) {
            if (str == null || str.isEmpty()) {
                Picasso.get().load(i2).transform((ae) new l()).into(this.driverImageIv);
                return;
            }
            if (!TextUtils.isEmpty(str)) {
                Picasso.get().load(str).placeholder(i).error(i2).transform((ae) new l()).into(this.driverImageIv);
            }
        }
    }

    public void showDetailsRecycler() {
        this.rideDetailsRecycler.setVisibility(0);
    }

    public void hideDetailsRecycler() {
        this.rideDetailsRecycler.setVisibility(8);
    }

    public void loadRideHistoryDetailsFields(i iVar, RecyclerView.LayoutManager layoutManager) {
        this.rideDetailsRecycler.setLayoutManager(layoutManager);
        this.rideDetailsRecycler.setAdapter(iVar);
    }

    public void showSecondDestination() {
        this.secondDestinationLayout.setVisibility(0);
    }

    public void setSecondDestinationAddress(String str) {
        this.secondDestinationAddressTv.setText(str);
    }

    public void hideSecondDestination() {
        this.secondDestinationLayout.setVisibility(8);
    }

    public void showRoundTrip() {
        this.roundTripLayout.setVisibility(0);
    }

    public void hideRoundTrip() {
        this.roundTripLayout.setVisibility(8);
    }

    public void showRideWaiting() {
        this.waitingLayout.setVisibility(0);
    }

    public void setRideWaiting(String str) {
        this.waitingTv.setText(str);
    }

    public void hideRideWaiting() {
        this.waitingLayout.setVisibility(8);
    }

    public void showParcel() {
        this.parcelLayout.setVisibility(0);
    }

    public void hideParcel() {
        this.parcelLayout.setVisibility(8);
    }

    public void hideVehicleModelLayout() {
        this.vehicleModelLabelTv.setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f1085b = new c(this);
        this.f1085b.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                RideHistoryDetailsView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f1084a.onBackClicked();
    }

    public void setPresenter(c cVar) {
        this.f1084a = cVar;
    }
}
