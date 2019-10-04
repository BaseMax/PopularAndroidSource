package cab.snapp.passenger.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.c.j;
import cab.snapp.passenger.data.models.charge.ChargeHistoryInfo;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeHistoryResponse;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import com.squareup.picasso.Picasso;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.Locale;

public final class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int ITEM_TYPE_HEADER = 0;
    public static final int ITEM_TYPE_ITEM = 1;
    public static final int ITEM_TYPE_LOADING = 2;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f351a;

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.j.b<a> f352b = io.reactivex.j.b.create();

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f353a = 1;

        /* renamed from: b  reason: collision with root package name */
        ChargeHistoryInfo f354b;
        ChargeHistoryResponse c;

        public static a createLoadingItem() {
            a aVar = new a();
            aVar.f353a = 2;
            return aVar;
        }

        public static a createHeaderItem(ChargeHistoryResponse chargeHistoryResponse) {
            a aVar = new a();
            aVar.f353a = 0;
            aVar.c = chargeHistoryResponse;
            return aVar;
        }

        public static a createNormalItem(ChargeHistoryInfo chargeHistoryInfo) {
            a aVar = new a();
            aVar.f353a = 1;
            aVar.f354b = chargeHistoryInfo;
            return aVar;
        }

        public final boolean isLoadingItem() {
            return this.f353a == 2;
        }

        public final boolean isHeaderItem() {
            return this.f353a == 0;
        }

        public final int getType() {
            return this.f353a;
        }

        public final ChargeHistoryInfo getChargeHistoryInfo() {
            return this.f354b;
        }
    }

    /* renamed from: cab.snapp.passenger.a.b$b  reason: collision with other inner class name */
    public static class C0016b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected ImageView f355a;

        /* renamed from: b  reason: collision with root package name */
        protected TextView f356b;
        protected TextView c;
        protected TextView d;

        public C0016b(View view) {
            super(view);
            this.f355a = (ImageView) view.findViewById(R.id.ride_history_prof_pic_image_view);
            this.f356b = (TextView) view.findViewById(R.id.ride_history_time_with_snapp_text_view);
            this.c = (TextView) view.findViewById(R.id.ride_history_km_in_ride_text_view);
            this.d = (TextView) view.findViewById(R.id.ride_history_finished_snapp_text_view);
        }
    }

    public static class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected View f357a;

        /* renamed from: b  reason: collision with root package name */
        protected AppCompatTextView f358b;
        protected AppCompatTextView c;
        protected AppCompatImageView d;
        protected AppCompatTextView e;
        protected AppCompatTextView f;
        protected AppCompatTextView g;

        public c(View view) {
            super(view);
            this.f357a = view.findViewById(R.id.charge_history_operator_bg);
            this.d = (AppCompatImageView) view.findViewById(R.id.charge_history_operator_icon_iv);
            this.f358b = (AppCompatTextView) view.findViewById(R.id.charge_history_amount_tv);
            this.e = (AppCompatTextView) view.findViewById(R.id.charge_history_amount_unit_tv);
            this.c = (AppCompatTextView) view.findViewById(R.id.charge_history_date_tv);
            this.f = (AppCompatTextView) view.findViewById(R.id.charge_history_type_tv);
            this.g = (AppCompatTextView) view.findViewById(R.id.charge_history_transaction_id_tv);
        }
    }

    public static class d extends RecyclerView.ViewHolder {
        public d(View view) {
            super(view);
        }
    }

    public b(ArrayList<a> arrayList) {
        this.f351a = arrayList;
    }

    public final z<a> getItemClicks() {
        return this.f352b;
    }

    public final ArrayList<a> getItems() {
        return this.f351a;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1) {
            return new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_charge_history_item, viewGroup, false));
        }
        if (i == 0) {
            return new C0016b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_ride_history_header, viewGroup, false));
        }
        if (i == 2) {
            return new d(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.row_loading, viewGroup, false));
        }
        return null;
    }

    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = this.f351a.get(i);
        Context context = viewHolder.itemView.getContext();
        if (context != null && aVar.getType() == 1 && (viewHolder instanceof c)) {
            c cVar = (c) viewHolder;
            ChargeHistoryInfo chargeHistoryInfo = aVar.getChargeHistoryInfo();
            if (chargeHistoryInfo != null) {
                SIMChargeOperator operator = chargeHistoryInfo.getOperator();
                if (operator != null) {
                    String activeUrl = operator.getActiveUrl();
                    if (activeUrl != null && !TextUtils.isEmpty(activeUrl)) {
                        Picasso.get().load(activeUrl).into((ImageView) cVar.d);
                    }
                    cVar.f357a.setBackgroundColor(operator.getBackgroundColor());
                } else {
                    cVar.d.setVisibility(4);
                    cVar.f357a.setBackgroundColor(context.getResources().getColor(R.color.ash_gray));
                }
                Locale locale = new Locale(g.getRealCurrentActiveLocaleString());
                cVar.f358b.setText(j.formatLong(chargeHistoryInfo.getChargeAmount().longValue(), new Locale(g.getRealCurrentActiveLocaleString())));
                cVar.c.setText(chargeHistoryInfo.getPersianPaidDate());
                cVar.f.setText(String.format(locale, "%s، %s", new Object[]{chargeHistoryInfo.getPersianType(), chargeHistoryInfo.getMobileNumber()}));
                cVar.g.setText(context.getString(R.string.referral_id_formatted, new Object[]{chargeHistoryInfo.getInvoiceCode()}));
            }
        }
    }

    public final int getItemViewType(int i) {
        return this.f351a.get(i).getType();
    }

    public final int getItemCount() {
        return this.f351a.size();
    }
}
