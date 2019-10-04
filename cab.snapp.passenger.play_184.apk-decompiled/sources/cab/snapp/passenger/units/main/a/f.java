package cab.snapp.passenger.units.main.a;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.a.e;
import com.squareup.picasso.Picasso;
import java.util.List;

public final class f extends RecyclerView.Adapter<a> {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public List<ServiceItem> f906a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public e.C0022e f907b;

    public class a extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private ImageView f909b;
        private AppCompatTextView c;
        private AppCompatTextView d;

        public a(View view) {
            super(view);
            this.f909b = (ImageView) view.findViewById(R.id.item_snapp_jek_service_content_imageview);
            this.c = (AppCompatTextView) view.findViewById(R.id.item_snapp_jek_service_content_textview);
            this.d = (AppCompatTextView) view.findViewById(R.id.item_snapp_jek_service_content_badge_textview);
            view.setOnClickListener(this);
        }

        public final void bindView(int i) {
            if (i != -1 && i < f.this.f906a.size()) {
                ServiceItem serviceItem = (ServiceItem) f.this.f906a.get(i);
                if (serviceItem.getBadgeBackgroundColor() == null || serviceItem.getBadgeText() == null || serviceItem.getBadgeTextColor() == null) {
                    this.d.setVisibility(8);
                } else {
                    this.d.setVisibility(0);
                    this.d.setText(serviceItem.getBadgeText());
                    this.d.setTextColor(Color.parseColor(serviceItem.getBadgeTextColor()));
                    DrawableCompat.setTint(this.d.getBackground(), Color.parseColor(serviceItem.getBadgeBackgroundColor()));
                }
                if (serviceItem.getIconUrl() != null && !serviceItem.getIconUrl().isEmpty()) {
                    Picasso.get().load(serviceItem.getIconUrl()).fit().centerInside().error((int) R.drawable.ic_snapp_group_placeholder).into(this.f909b);
                }
                this.c.setText(serviceItem.getName());
            }
        }

        public final void onClick(View view) {
            if (f.this.f907b != null) {
                int adapterPosition = getAdapterPosition();
                if (adapterPosition != -1 && adapterPosition < f.this.f906a.size()) {
                    f.this.f907b.onItemClicked((ServiceItem) f.this.f906a.get(adapterPosition));
                }
            }
        }
    }

    public f(List<ServiceItem> list, e.C0022e eVar) {
        this.f906a = list;
        this.f907b = eVar;
    }

    public final a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_snapp_jek_service_content_card, viewGroup, false));
    }

    public final void onBindViewHolder(a aVar, int i) {
        aVar.bindView(i);
    }

    public final int getItemCount() {
        return this.f906a.size();
    }
}
