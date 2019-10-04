package cab.snapp.passenger.units.messages.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.c.a.b;
import cab.snapp.passenger.data.models.Messages;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.messages.adapter.MessagesAdapter;
import java.util.List;

public final class MessagesAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<Messages> f971a;

    /* renamed from: b  reason: collision with root package name */
    private a f972b;

    public class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(2131361989)
        TextView cellMessagesDate;
        @BindView(2131361990)
        TextView cellMessagesDesc;
        @BindView(2131361991)
        TextView cellMessagesMoreBtn;
        @BindView(2131361965)
        FrameLayout messageContainer;

        public ViewHolder(View view) {
            super(view);
            ButterKnife.bind((Object) this, view);
        }
    }

    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.messageContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.card_view_message_container, "field 'messageContainer'", FrameLayout.class);
            viewHolder.cellMessagesDate = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_messages_date, "field 'cellMessagesDate'", TextView.class);
            viewHolder.cellMessagesDesc = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_messages_desc, "field 'cellMessagesDesc'", TextView.class);
            viewHolder.cellMessagesMoreBtn = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_messages_more_btn, "field 'cellMessagesMoreBtn'", TextView.class);
        }

        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder != null) {
                this.target = null;
                viewHolder.messageContainer = null;
                viewHolder.cellMessagesDate = null;
                viewHolder.cellMessagesDesc = null;
                viewHolder.cellMessagesMoreBtn = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public MessagesAdapter(List<Messages> list) {
        this.f971a = list;
    }

    public final void setItemClickListener(a aVar) {
        this.f972b = aVar;
    }

    public final void addData(List<Messages> list) {
        if (list != null) {
            this.f971a.addAll(list);
            notifyDataSetChanged();
        }
    }

    public final Messages getItemAtPosition(int i) {
        try {
            if (this.f971a != null && this.f971a.size() > 0) {
                return this.f971a.get(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
        }
        return null;
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_messages, viewGroup, false));
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        String str;
        Messages messages = this.f971a.get(i);
        viewHolder.cellMessagesDate.setText(g.changeNumbersBasedOnCurrentLocale(b.getJalaliTimeDate(messages.getMessageDate())));
        String messageDesc = messages.getMessageDesc();
        if (g.isCurrentLocalRtl()) {
            str = "‫".concat(String.valueOf(messageDesc));
            viewHolder.cellMessagesDesc.setGravity(5);
        } else {
            str = "‪".concat(String.valueOf(messageDesc));
            viewHolder.cellMessagesDesc.setGravity(3);
        }
        viewHolder.cellMessagesDesc.setText(str);
        if (messages.getMessageSeen() == 0) {
            viewHolder.cellMessagesDate.setBackground(viewHolder.itemView.getContext().getResources().getDrawable(R.color.green_blue_two));
        } else {
            viewHolder.cellMessagesDate.setBackground(viewHolder.itemView.getContext().getResources().getDrawable(R.color.brown_grey));
        }
        if (messages.getMessageUrl() == null || messages.getMessageUrl().isEmpty()) {
            if (viewHolder.cellMessagesMoreBtn.getVisibility() == 0) {
                viewHolder.cellMessagesMoreBtn.setVisibility(8);
            }
            return;
        }
        if (viewHolder.cellMessagesMoreBtn.getVisibility() == 8) {
            viewHolder.cellMessagesMoreBtn.setVisibility(0);
        }
        viewHolder.cellMessagesMoreBtn.setOnClickListener(new View.OnClickListener(viewHolder, i) {
            private final /* synthetic */ MessagesAdapter.ViewHolder f$1;
            private final /* synthetic */ int f$2;

            {
                this.f$1 = r2;
                this.f$2 = r3;
            }

            public final void onClick(View view) {
                MessagesAdapter.this.a(this.f$1, this.f$2, view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ViewHolder viewHolder, int i, View view) {
        a aVar = this.f972b;
        if (aVar != null) {
            aVar.onClick(viewHolder.cellMessagesMoreBtn.getId(), i, null);
        }
    }

    public final int getItemCount() {
        List<Messages> list = this.f971a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }
}
