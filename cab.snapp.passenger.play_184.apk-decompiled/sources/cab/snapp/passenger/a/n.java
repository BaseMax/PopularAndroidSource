package cab.snapp.passenger.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data_access_layer.network.responses.TicketItemResponse;
import cab.snapp.passenger.play.R;
import java.util.List;

public final class n extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final int f422a = 1001;

    /* renamed from: b  reason: collision with root package name */
    private final int f423b = 1002;
    /* access modifiers changed from: private */
    public List<TicketItemResponse> c;
    /* access modifiers changed from: private */
    public a d;

    public interface a {
        void onItemClicked(int i, TicketItemResponse ticketItemResponse);

        void onSnappBoxSupportClicked();

        void onSnappSupportClicked();
    }

    public class b extends RecyclerView.ViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private TextView f429b;

        b(View view) {
            super(view);
            this.f429b = (TextView) view.findViewById(R.id.support_item_section_header_title_tv);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i) {
            this.f429b.setText(i);
        }
    }

    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        AppCompatTextView f430a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f431b;
        /* access modifiers changed from: private */
        public View d;

        c(View view) {
            super(view);
            this.d = view;
            this.f430a = (AppCompatTextView) view.findViewById(R.id.support_item_ticket_title_tv);
            this.f431b = (ImageView) view.findViewById(R.id.support_item_ticket_arrow_iv);
        }

        /* access modifiers changed from: package-private */
        public final void a(int i) {
            this.f430a.setText(i);
            this.f431b.setVisibility(4);
        }
    }

    public final int getFirstSectionIndex() {
        return 0;
    }

    public n(List<TicketItemResponse> list, a aVar) {
        this.c = list;
        this.d = aVar;
    }

    public final int getSecondSectionIndex() {
        List<TicketItemResponse> list = this.c;
        if (list == null) {
            return 0;
        }
        return list.size() + 1;
    }

    public final int getSnappSupportCallIndex() {
        return getSecondSectionIndex() + 1;
    }

    public final int getSnappBoxSupportCallIndex() {
        return getSnappSupportCallIndex() + 1;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1002) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.support_item_section_header, viewGroup, false));
        }
        return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.support_item_ticket, viewGroup, false));
    }

    public final void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder.getAdapterPosition() == getFirstSectionIndex()) {
            ((b) viewHolder).a(R.string.what_is_your_problem);
        } else if (viewHolder.getAdapterPosition() == getSecondSectionIndex()) {
            ((b) viewHolder).a(R.string.could_not_find_your_problem);
        } else if (viewHolder.getAdapterPosition() == getSnappSupportCallIndex()) {
            c cVar = (c) viewHolder;
            cVar.a((int) R.string.call_snapp);
            cVar.d.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (n.this.d != null) {
                        n.this.d.onSnappSupportClicked();
                    }
                }
            });
        } else if (viewHolder.getAdapterPosition() == getSnappBoxSupportCallIndex()) {
            c cVar2 = (c) viewHolder;
            cVar2.a((int) R.string.call_snapp_box);
            cVar2.d.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    if (n.this.d != null) {
                        n.this.d.onSnappBoxSupportClicked();
                    }
                }
            });
        } else {
            List<TicketItemResponse> list = this.c;
            if (list != null && !list.isEmpty()) {
                boolean z = this.c.get(viewHolder.getAdapterPosition() - 1).getChildList() != null && this.c.get(viewHolder.getAdapterPosition() - 1).getChildList().size() > 0;
                c cVar3 = (c) viewHolder;
                cVar3.f430a.setText(this.c.get(viewHolder.getAdapterPosition() - 1).getText());
                if (z) {
                    cVar3.f431b.setVisibility(0);
                } else {
                    cVar3.f431b.setVisibility(4);
                }
                cVar3.d.setOnClickListener(new View.OnClickListener() {
                    public final void onClick(View view) {
                        if (n.this.d != null) {
                            n.this.d.onItemClicked(viewHolder.getAdapterPosition(), (TicketItemResponse) n.this.c.get(viewHolder.getAdapterPosition() - 1));
                        }
                    }
                });
            }
        }
    }

    public final int getItemViewType(int i) {
        return (i == getFirstSectionIndex() || i == getSecondSectionIndex()) ? 1002 : 1001;
    }

    public final int getItemCount() {
        List<TicketItemResponse> list = this.c;
        if (list == null) {
            return 0;
        }
        return list.size() + 4;
    }
}
