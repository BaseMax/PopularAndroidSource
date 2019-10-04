package cab.snapp.passenger.units.credit;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.e;
import cab.snapp.passenger.data.models.Transaction;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.credit.adapter.CreditItemAdapter;
import cab.snapp.passenger.units.top_up_payment.TopUpBottomSheetDialogFragment;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappFloatingActionButton;
import cab.snapp.snappuikit.c;

public class CreditView extends LinearLayout implements BaseView<c> {
    public static final String ADD_CREDIT_DIALOG = "add_credit_dialog";

    /* renamed from: a  reason: collision with root package name */
    protected c f686a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f687b;
    protected r c;
    private b d;
    private c e;
    @BindView(2131362610)
    SnappFloatingActionButton viewCreditAddBtn;
    @BindView(2131362611)
    LinearLayout viewCreditEmpty;
    @BindView(2131362612)
    RecyclerView viewCreditRv;

    public CreditView(Context context) {
        super(context);
    }

    public CreditView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CreditView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362610})
    public void onAddCreditButton(SnappFloatingActionButton snappFloatingActionButton) {
        this.f686a.addCreditButtonClicked();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f687b = ButterKnife.bind((Object) this, (View) this);
        this.c = new r(getContext());
        this.e = new c(this);
    }

    public void setPresenter(c cVar) {
        this.f686a = cVar;
    }

    public void showErrorDialog(String str) {
        this.d = new b.a(getContext()).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                CreditView.this.b(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.d.dismiss();
    }

    public void showLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showEmptyLayout() {
        this.viewCreditRv.setVisibility(8);
        this.viewCreditEmpty.setVisibility(0);
    }

    public void hideEmptyLayout() {
        this.viewCreditRv.setVisibility(0);
        this.viewCreditEmpty.setVisibility(8);
    }

    public void setupRecyclerView(CreditItemAdapter creditItemAdapter) {
        this.viewCreditRv.setLayoutManager(new LinearLayoutManager(getContext()));
        this.viewCreditRv.setHasFixedSize(true);
        this.viewCreditRv.addItemDecoration(new cab.snapp.snappuikit.c.c((int) e.convertDpToPixel(getContext(), 8.0f)));
        creditItemAdapter.setClickListener(new a() {
            public final void onClick(int i, int i2, Object obj) {
                CreditView.this.itemClicked(i, i2, obj);
            }
        });
        this.viewCreditRv.setAdapter(creditItemAdapter);
    }

    public void itemClicked(int i, int i2, Object obj) {
        Transaction transaction = obj instanceof Transaction ? (Transaction) obj : null;
        if (i == R.id.item_credit_container) {
            this.f686a.rowItemClicked(i2, transaction);
        }
    }

    public void showAddCreditDialog() {
        c cVar = this.f686a;
        if (cVar != null && cVar.getFragmentManager() != null) {
            TopUpBottomSheetDialogFragment newInstance = TopUpBottomSheetDialogFragment.newInstance(CreditRequest.PLACE.CREDIT_HISTORY);
            if (!newInstance.isAdded()) {
                newInstance.show(this.f686a.getFragmentManager(), "top_up_bottom_sheet");
            }
        }
    }

    public void setToolbarTitle(int i) {
        this.e.setTitle(i);
    }

    public void setToolbarBackButton() {
        this.e.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                CreditView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.f686a;
        if (cVar != null) {
            cVar.onBackPressed();
        }
    }

    public void showSupportDialog(Transaction transaction) {
        com.google.android.material.bottomsheet.a aVar = new com.google.android.material.bottomsheet.a(getContext());
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_credit_more, null, false);
        inflate.findViewById(R.id.button).setOnClickListener(new View.OnClickListener(transaction, aVar) {
            private final /* synthetic */ Transaction f$1;
            private final /* synthetic */ com.google.android.material.bottomsheet.a f$2;

            {
                this.f$1 = r2;
                this.f$2 = r3;
            }

            public final void onClick(View view) {
                CreditView.this.a(this.f$1, this.f$2, view);
            }
        });
        aVar.setContentView(inflate);
        aVar.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Transaction transaction, com.google.android.material.bottomsheet.a aVar, View view) {
        String transactionReference = transaction != null ? transaction.getTransactionReference() : null;
        c cVar = this.f686a;
        if (cVar != null) {
            cVar.onSupportItemClicked(transactionReference);
        }
        aVar.dismiss();
    }
}
