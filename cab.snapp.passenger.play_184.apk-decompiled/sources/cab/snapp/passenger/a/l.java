package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import cab.snapp.passenger.data.models.price.PriceModel;
import cab.snapp.passenger.play.R;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.ae;
import java.util.List;

public final class l extends RecyclerView.Adapter<b> {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public List<PriceModel> f408a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Context f409b;
    /* access modifiers changed from: private */
    public a c;
    /* access modifiers changed from: private */
    public int d;
    /* access modifiers changed from: private */
    public int e = -1;

    public interface a {
        void onServiceTypeSelected(int i);
    }

    public class b extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private LinearLayout f411b;
        private RelativeLayout c;
        private AppCompatImageView d;
        private AppCompatTextView e;
        private AppCompatImageView f;
        private AppCompatTextView g;
        private AppCompatTextView h;

        public b(View view) {
            super(view);
            view.setOnClickListener(this);
            this.f411b = (LinearLayout) view.findViewById(R.id.item_service_type_tooltip_circles_layout);
            this.c = (RelativeLayout) view.findViewById(R.id.item_service_type_icon_holder_relativelayout);
            this.d = (AppCompatImageView) view.findViewById(R.id.item_service_type_icon_imageview);
            this.e = (AppCompatTextView) view.findViewById(R.id.item_service_type_discount_textview);
            this.f = (AppCompatImageView) view.findViewById(R.id.item_service_type_surge_icon_imageview);
            this.g = (AppCompatTextView) view.findViewById(R.id.item_service_type_desc_textview);
            this.h = (AppCompatTextView) view.findViewById(R.id.item_service_type_state_textview);
        }

        public final void onClick(View view) {
            int adapterPosition = getAdapterPosition();
            if (adapterPosition >= 0 && adapterPosition < l.this.f408a.size()) {
                l lVar = l.this;
                int unused = lVar.d = ((PriceModel) lVar.f408a.get(adapterPosition)).getService().getServiceType();
                if (l.this.c != null) {
                    l.this.c.onServiceTypeSelected(l.this.d);
                }
                l.this.notifyDataSetChanged();
            }
        }

        public final void bindView(int i) {
            if (i != -1 && i < l.this.f408a.size()) {
                PriceModel priceModel = (PriceModel) l.this.f408a.get(i);
                ServiceTypeModel service = priceModel.getService();
                if (service != null) {
                    String stImageURl = service.getStImageURl();
                    if (stImageURl == null) {
                        Picasso.get().load((int) R.drawable.ph_service_type).transform((ae) new cab.snapp.passenger.f.l()).into((ImageView) this.d);
                    } else {
                        Picasso.get().load(stImageURl).transform((ae) new cab.snapp.passenger.f.l()).into((ImageView) this.d);
                    }
                    this.g.setText(service.getStDesc());
                    if (service.isNew() && service.isEnabled()) {
                        this.h.setText(R.string.service_type_experimental);
                    } else if (!service.isNew() || service.isEnabled()) {
                        this.h.setText("");
                    } else {
                        this.h.setText(R.string.service_type_coming_soon);
                    }
                    if (priceModel.isSurged()) {
                        this.f.setVisibility(0);
                    } else {
                        this.f.setVisibility(8);
                    }
                    if (!priceModel.isDiscountedPrice() || priceModel.getPriceTexts() == null) {
                        this.e.setVisibility(8);
                    } else {
                        this.e.setVisibility(0);
                        this.e.setText("");
                    }
                    if ((priceModel.isDiscountedPrice() || priceModel.isSurged()) && service.getServiceType() == l.this.d) {
                        this.f411b.setVisibility(0);
                    } else {
                        this.f411b.setVisibility(4);
                    }
                    if (service.getServiceType() == l.this.d) {
                        this.itemView.setSelected(true);
                        this.g.setSelected(true);
                    } else {
                        this.itemView.setSelected(false);
                        this.g.setSelected(false);
                    }
                    if (l.this.e < i) {
                        Animation loadAnimation = AnimationUtils.loadAnimation(l.this.f409b, R.anim.fragment_animation_enter_from_down);
                        loadAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
                        this.itemView.startAnimation(loadAnimation);
                        int unused = l.this.e = i;
                    }
                }
            }
        }
    }

    public l(List<PriceModel> list, int i, a aVar) {
        this.f408a = list;
        this.d = i;
        this.c = aVar;
    }

    public final b onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.f409b = viewGroup.getContext();
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_service_type, viewGroup, false));
    }

    public final void onBindViewHolder(b bVar, int i) {
        bVar.bindView(i);
    }

    public final int getItemCount() {
        return this.f408a.size();
    }
}
