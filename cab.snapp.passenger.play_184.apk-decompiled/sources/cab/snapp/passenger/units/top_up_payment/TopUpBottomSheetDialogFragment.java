package cab.snapp.passenger.units.top_up_payment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.play.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.material.bottomsheet.a;

public class TopUpBottomSheetDialogFragment extends BottomSheetDialogFragment {
    public static final String PRIVATE_CHANNEL_FOR_SCANNER = "PRIVATE_CHANNEL_FOR_SCANNER";

    /* renamed from: a  reason: collision with root package name */
    protected Unbinder f1339a;

    /* renamed from: b  reason: collision with root package name */
    private BottomSheetBehavior.a f1340b;
    private CreditRequest.PLACE c;
    private TopUpPaymentView d;
    private b e;
    private TopUpBottomSheetBehavior f;

    public static TopUpBottomSheetDialogFragment newInstance(CreditRequest.PLACE place) {
        TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment = new TopUpBottomSheetDialogFragment();
        topUpBottomSheetDialogFragment.setPlace(place);
        return topUpBottomSheetDialogFragment;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, R.style.BottomSheetDialogFragmentStyle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.d = (TopUpPaymentView) layoutInflater.inflate(R.layout.view_top_up_payment, viewGroup, false);
        this.f1339a = ButterKnife.bind((Object) this, (View) this.d);
        d dVar = new d();
        this.e = new b();
        this.e.setPlace(this.c);
        e eVar = new e();
        dVar.setView(this.d);
        dVar.setInteractor(this.e);
        this.e.setPresenter(dVar);
        this.e.setRouter(eVar);
        this.e.setController(this);
        this.e.onUnitCreated();
        this.d.setPresenter(dVar);
        this.d.setController(this);
        this.d.setBottomSheetCallback(this.f1340b);
        return this.d;
    }

    public void onPause() {
        this.d.handleModalBottomSheetClosed();
        this.e.onUnitPause();
        super.onPause();
    }

    public void onResume() {
        this.e.onUnitResume();
        super.onResume();
    }

    public void onStop() {
        this.e.onUnitStop();
        super.onStop();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        onCreateDialog.setOnShowListener(new DialogInterface.OnShowListener() {
            public final void onShow(DialogInterface dialogInterface) {
                TopUpBottomSheetDialogFragment.this.a(dialogInterface);
            }
        });
        return onCreateDialog;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        FrameLayout frameLayout = (FrameLayout) ((a) dialogInterface).findViewById(R.id.design_bottom_sheet);
        if (frameLayout != null && this.d != null) {
            this.f = (TopUpBottomSheetBehavior) BottomSheetBehavior.from(frameLayout);
            this.f.setState(3);
            this.f.setBottomSheetCallback(this.d.f);
        }
    }

    public boolean isBottomSheetOpened() {
        TopUpPaymentView topUpPaymentView = this.d;
        if (topUpPaymentView != null) {
            return topUpPaymentView.e;
        }
        return false;
    }

    public void setBottomSheetCallback(BottomSheetBehavior.a aVar) {
        this.f1340b = aVar;
    }

    public TopUpBottomSheetBehavior getBottomSheetBehavior() {
        return this.f;
    }

    public CreditRequest.PLACE getPlace() {
        return this.c;
    }

    public void setPlace(CreditRequest.PLACE place) {
        this.c = place;
    }
}
