package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.RideRatingModel;
import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;
import java.util.List;

public final class j extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f401a;

    /* renamed from: b  reason: collision with root package name */
    private final RideRatingModel f402b;
    private final Context c;
    private List<RideRatingReason> d = new ArrayList();
    private a e;

    public interface a {
        void onItemClick(int i, RideRatingReason rideRatingReason);
    }

    protected static class b extends RecyclerView.ViewHolder {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public final TextView f403a;

        public b(View view) {
            super(view);
            this.f403a = (TextView) view.findViewById(R.id.item_ride_rating_reason_text_view);
        }
    }

    public j(Context context, RideRatingModel rideRatingModel, boolean z) {
        this.c = context;
        this.f402b = rideRatingModel;
        if (rideRatingModel != null) {
            if (z) {
                this.d = rideRatingModel.getNegativeReasons();
            } else {
                this.d = rideRatingModel.getPositiveReasons();
            }
        }
        this.f401a = z;
    }

    public final void setOnItemClickListener(a aVar) {
        this.e = aVar;
    }

    public final b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.c).inflate(R.layout.item_ride_rating_reason, viewGroup, false));
    }

    public final void onBindViewHolder(b bVar, int i) {
        RideRatingReason rideRatingReason = this.d.get(i);
        bVar.f403a.setText(rideRatingReason.getMessage());
        if (this.f401a) {
            bVar.f403a.setBackgroundResource(R.drawable.selector_ride_rating_reason_negative);
            bVar.f403a.setTextColor(this.c.getResources().getColorStateList(R.color.selector_ride_rating_reason_negative_color));
        } else {
            bVar.f403a.setBackgroundResource(R.drawable.selector_ride_rating_reason_positive);
            bVar.f403a.setTextColor(this.c.getResources().getColorStateList(R.color.selector_ride_rating_reason_positive_color));
        }
        bVar.f403a.setSelected(this.f402b.isSelected(rideRatingReason.getCode()));
        bVar.f403a.setOnClickListener(new View.OnClickListener(i, rideRatingReason) {
            private final /* synthetic */ int f$1;
            private final /* synthetic */ RideRatingReason f$2;

            {
                this.f$1 = r2;
                this.f$2 = r3;
            }

            public final void onClick(View view) {
                j.this.a(this.f$1, this.f$2, view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, RideRatingReason rideRatingReason, View view) {
        a aVar = this.e;
        if (aVar != null) {
            aVar.onItemClick(i, rideRatingReason);
        }
    }

    public final int getItemCount() {
        return this.d.size();
    }
}
