package cab.snapp.passenger.units.support;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.n;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c;

public class SupportView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1323a;
    @BindView(2131362982)
    RecyclerView ticketsRecycler;

    public SupportView(Context context) {
        super(context);
    }

    public SupportView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SupportView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void loadTickets(RecyclerView.LayoutManager layoutManager, n nVar) {
        this.ticketsRecycler.setLayoutManager(layoutManager);
        this.ticketsRecycler.setHasFixedSize(true);
        this.ticketsRecycler.setAdapter(nVar);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        c cVar = new c(this);
        cVar.setTitle((int) R.string.support);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                SupportView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.f1323a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    public void setPresenter(c cVar) {
        this.f1323a = cVar;
    }
}
