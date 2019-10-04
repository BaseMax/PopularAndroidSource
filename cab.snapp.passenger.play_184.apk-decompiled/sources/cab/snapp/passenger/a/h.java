package cab.snapp.passenger.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.c.j;
import cab.snapp.passenger.a.h;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data_access_layer.network.responses.RideHistoryResponse;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import com.squareup.picasso.Picasso;
import io.reactivex.z;
import java.util.ArrayList;

public final class h extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int ITEM_TYPE_HEADER = 0;
    public static final int ITEM_TYPE_ITEM = 1;
    public static final int ITEM_TYPE_LOADING = 2;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f389a;

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.j.b<a> f390b = io.reactivex.j.b.create();

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f391a = 1;

        /* renamed from: b  reason: collision with root package name */
        RideHistoryInfo f392b;
        RideHistoryResponse c;

        public static a createLoadingItem() {
            a aVar = new a();
            aVar.f391a = 2;
            return aVar;
        }

        public static a createHeaderItem(RideHistoryResponse rideHistoryResponse) {
            a aVar = new a();
            aVar.f391a = 0;
            aVar.c = rideHistoryResponse;
            return aVar;
        }

        public static a createNormalItem(RideHistoryInfo rideHistoryInfo) {
            a aVar = new a();
            aVar.f391a = 1;
            aVar.f392b = rideHistoryInfo;
            return aVar;
        }

        public final boolean isLoadingItem() {
            return this.f391a == 2;
        }

        public final boolean isHeaderItem() {
            return this.f391a == 0;
        }

        public final int getType() {
            return this.f391a;
        }

        public final RideHistoryInfo getRideHistoryInfo() {
            return this.f392b;
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected ImageView f393a;

        /* renamed from: b  reason: collision with root package name */
        protected TextView f394b;
        protected TextView c;
        protected TextView d;

        public b(View view) {
            super(view);
            this.f393a = (ImageView) view.findViewById(R.id.ride_history_prof_pic_image_view);
            this.f394b = (TextView) view.findViewById(R.id.ride_history_time_with_snapp_text_view);
            this.c = (TextView) view.findViewById(R.id.ride_history_km_in_ride_text_view);
            this.d = (TextView) view.findViewById(R.id.ride_history_finished_snapp_text_view);
        }
    }

    public static class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected TextView f395a;

        /* renamed from: b  reason: collision with root package name */
        protected TextView f396b;
        protected TextView c;
        protected TextView d;
        protected TextView e;
        protected LinearLayout f;
        protected ImageView g;

        public c(View view) {
            super(view);
            this.f395a = (TextView) view.findViewById(R.id.ride_history_origin_text_view);
            this.f396b = (TextView) view.findViewById(R.id.ride_history_destination_text_view);
            this.c = (TextView) view.findViewById(R.id.ride_history_ride_price_text_view);
            this.d = (TextView) view.findViewById(R.id.ride_history_ride_price_rial_text_view);
            this.e = (TextView) view.findViewById(R.id.ride_history_title_text_view);
            this.f = (LinearLayout) view.findViewById(R.id.ride_history_top_row_panel);
            this.g = (ImageView) view.findViewById(R.id.ride_history_map_image_view);
        }
    }

    public static class d extends RecyclerView.ViewHolder {
        public d(View view) {
            super(view);
        }
    }

    public h(ArrayList<a> arrayList) {
        this.f389a = arrayList;
    }

    public final z<a> getItemClicks() {
        return this.f390b;
    }

    public final ArrayList<a> getItems() {
        return this.f389a;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_ride_history_item, viewGroup, false));
        }
        if (i == 0) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_ride_history_header, viewGroup, false));
        }
        if (i == 2) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_loading, viewGroup, false));
        }
        return null;
    }

    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = this.f389a.get(i);
        Context context = viewHolder.itemView.getContext();
        if (context != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener(aVar) {
                private final /* synthetic */ h.a f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    h.this.a(this.f$1, view);
                }
            });
            if (aVar.getType() != 1 || !(viewHolder instanceof c)) {
                if (aVar.getType() == 0 && (viewHolder instanceof b)) {
                    b bVar = (b) viewHolder;
                    RideHistoryResponse rideHistoryResponse = aVar.c;
                    if (rideHistoryResponse.getSnappDuration() != null) {
                        bVar.f394b.setText(g.changeNumbersBasedOnCurrentLocale(rideHistoryResponse.getSnappDuration()));
                    }
                    if (rideHistoryResponse.getSnappMileage() != null) {
                        bVar.c.setText(g.changeNumbersBasedOnCurrentLocale(rideHistoryResponse.getSnappMileage()));
                    }
                    if (rideHistoryResponse.getSuccessfulRides() != null) {
                        bVar.d.setText(g.changeNumbersBasedOnCurrentLocale(rideHistoryResponse.getSuccessfulRides()));
                    }
                }
                return;
            }
            c cVar = (c) viewHolder;
            RideHistoryInfo rideHistoryInfo = aVar.f392b;
            if (rideHistoryInfo.getOriginFormattedAddress().contains("، تهران، تهران،")) {
                rideHistoryInfo.setOriginFormattedAddress(rideHistoryInfo.getOriginFormattedAddress().replace("، تهران، تهران،", "تهران،"));
            }
            if (rideHistoryInfo.getDestinationFormattedAddress().contains("، تهران، تهران،")) {
                rideHistoryInfo.setDestinationFormattedAddress(rideHistoryInfo.getDestinationFormattedAddress().replace("، تهران، تهران،", "تهران،"));
            }
            cVar.f395a.setText(rideHistoryInfo.getOriginFormattedAddress());
            cVar.f396b.setText(rideHistoryInfo.getDestinationFormattedAddress());
            cVar.e.setText(rideHistoryInfo.getTitle());
            if (rideHistoryInfo.getFinalPrice() > 0.0d) {
                cVar.d.setVisibility(0);
                cVar.c.setText(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(Double.valueOf(rideHistoryInfo.getFinalPrice()))));
            } else {
                cVar.d.setVisibility(4);
                cVar.c.setText(context.getResources().getString(R.string.free_ride));
            }
            try {
                String map_url = aVar.getRideHistoryInfo().getMap_url();
                if (map_url != null && !TextUtils.isEmpty(map_url)) {
                    Picasso.get().load(map_url).placeholder((int) R.drawable.shape_placeholder_pure_white_pressed).fit().centerInside().into(cVar.g);
                }
                if (!(rideHistoryInfo.getLastestRideStatus() == 7 || rideHistoryInfo.getLastestRideStatus() == 6)) {
                    if (rideHistoryInfo.getLastestRideStatus() != 8) {
                        cVar.f.setBackgroundColor(context.getResources().getColor(R.color.colorAccent));
                        return;
                    }
                }
                cVar.f.setBackgroundColor(context.getResources().getColor(R.color.silver_chalice));
            } catch (NumberFormatException e) {
                e.printStackTrace();
                com.a.a.a.logException(e);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, View view) {
        this.f390b.onNext(aVar);
    }

    public final int getItemViewType(int i) {
        return this.f389a.get(i).getType();
    }

    public final int getItemCount() {
        return this.f389a.size();
    }
}
