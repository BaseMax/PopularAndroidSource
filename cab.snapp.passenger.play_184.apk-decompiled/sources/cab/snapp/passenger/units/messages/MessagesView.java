package cab.snapp.passenger.units.messages;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.e;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.messages.adapter.MessagesAdapter;
import cab.snapp.snappuikit.c.c;

public class MessagesView extends LinearLayout implements BaseView<c>, a {

    /* renamed from: a  reason: collision with root package name */
    protected c f967a;

    /* renamed from: b  reason: collision with root package name */
    private r f968b;
    @BindView(2131362726)
    LinearLayout viewMessagesEmpty;
    @BindView(2131362727)
    RecyclerView viewMessagesRecyclerView;

    public MessagesView(Context context) {
        super(context);
    }

    public MessagesView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MessagesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void hideLoadingDialog() {
        r rVar = this.f968b;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showLoadingDialog() {
        r rVar = this.f968b;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void showEmptyView() {
        this.viewMessagesEmpty.setVisibility(0);
        this.viewMessagesRecyclerView.setVisibility(8);
    }

    public void hideEmptyView() {
        this.viewMessagesEmpty.setVisibility(8);
        this.viewMessagesRecyclerView.setVisibility(0);
    }

    public void setupRecyclerView(MessagesAdapter messagesAdapter) {
        this.viewMessagesRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.viewMessagesRecyclerView.setHasFixedSize(true);
        c cVar = new c((int) e.convertDpToPixel(getContext(), 8.0f));
        messagesAdapter.setItemClickListener(this);
        this.viewMessagesRecyclerView.addItemDecoration(cVar);
        this.viewMessagesRecyclerView.setAdapter(messagesAdapter);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f968b = new r(getContext());
        cab.snapp.snappuikit.c cVar = new cab.snapp.snappuikit.c(this);
        cVar.setTitle((int) R.string.messages);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                MessagesView.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f967a.onBackButtonClicked();
    }

    public void setPresenter(c cVar) {
        this.f967a = cVar;
    }

    public void onClick(int i, int i2, Object obj) {
        if (i == R.id.cell_messages_more_btn) {
            c cVar = this.f967a;
            if (cVar != null) {
                cVar.itemMoreClicked(i2);
            }
        }
    }
}
