package cab.snapp.passenger.units.charge_select_type;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.e;

public class ChargeSelectTypeView extends LinearLayout implements BaseView<b> {

    /* renamed from: a  reason: collision with root package name */
    protected b f677a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f678b;
    private SelectChargeTypeBottomSheetDialogFragment c;
    @BindView(2131362399)
    RecyclerView recyclerView;

    @OnClick({2131362234})
    public void onCloseClicked() {
        b bVar = this.f677a;
        if (!(bVar == null || bVar.getInteractor() == null)) {
            bVar.getInteractor();
            a.a();
        }
        SelectChargeTypeBottomSheetDialogFragment selectChargeTypeBottomSheetDialogFragment = this.c;
        if (selectChargeTypeBottomSheetDialogFragment != null) {
            selectChargeTypeBottomSheetDialogFragment.dismiss();
        }
    }

    public ChargeSelectTypeView(Context context) {
        super(context);
    }

    public ChargeSelectTypeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChargeSelectTypeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f678b = ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(b bVar) {
        this.f677a = bVar;
    }

    public void setController(SelectChargeTypeBottomSheetDialogFragment selectChargeTypeBottomSheetDialogFragment) {
        this.c = selectChargeTypeBottomSheetDialogFragment;
    }

    public void setAdapter(e eVar) {
        this.recyclerView.setAdapter(eVar);
    }

    public void dismiss() {
        SelectChargeTypeBottomSheetDialogFragment selectChargeTypeBottomSheetDialogFragment = this.c;
        if (selectChargeTypeBottomSheetDialogFragment != null) {
            selectChargeTypeBottomSheetDialogFragment.dismiss();
        }
    }
}
