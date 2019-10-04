package cab.snapp.passenger.a;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.c.j;
import cab.snapp.passenger.data.models.RideHistoryDetailRow;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import java.util.List;
import java.util.Locale;

public final class i extends RecyclerView.Adapter<a> {

    /* renamed from: a  reason: collision with root package name */
    private Context f397a;

    /* renamed from: b  reason: collision with root package name */
    private List<RideHistoryDetailRow> f398b;

    public class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        View f399a;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f400b;
        AppCompatTextView c;

        public a(View view) {
            super(view);
            this.f399a = view;
            this.f400b = (AppCompatTextView) view.findViewById(R.id.row_ride_history_details_field_title_tv);
            this.c = (AppCompatTextView) view.findViewById(R.id.row_ride_history_details_field_description_tv);
        }
    }

    public i(Context context, List<RideHistoryDetailRow> list) {
        this.f397a = context;
        this.f398b = list;
    }

    public final a onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = this.f397a;
        if (context == null) {
            return new a(viewGroup);
        }
        return new a(LayoutInflater.from(context).inflate(R.layout.row_ride_history_details_field, viewGroup, false));
    }

    public final void onBindViewHolder(a aVar, int i) {
        String str;
        ForegroundColorSpan foregroundColorSpan;
        if (this.f397a != null) {
            List<RideHistoryDetailRow> list = this.f398b;
            if (list != null && !list.isEmpty() && this.f398b.size() > i) {
                RideHistoryDetailRow rideHistoryDetailRow = this.f398b.get(i);
                if (rideHistoryDetailRow != null) {
                    aVar.f400b.setText(rideHistoryDetailRow.getTitle());
                    if (rideHistoryDetailRow.getType() == null || !rideHistoryDetailRow.getType().equalsIgnoreCase("price")) {
                        aVar.c.setText(rideHistoryDetailRow.getDescription());
                    } else {
                        Double valueOf = Double.valueOf(Math.abs(Double.valueOf(rideHistoryDetailRow.getDescription()).doubleValue()));
                        StringBuilder sb = new StringBuilder(g.changeNumbersBasedOnCurrentLocale(j.formatDouble(valueOf, Locale.getDefault())));
                        if (Integer.valueOf(rideHistoryDetailRow.getDescription()).intValue() == 0) {
                            str = this.f397a.getString(R.string.free_ride);
                        } else {
                            sb.append(" ");
                            sb.append(this.f397a.getString(R.string.rial));
                            str = sb.toString();
                        }
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                        if (Integer.valueOf(rideHistoryDetailRow.getDescription()).intValue() < 0) {
                            foregroundColorSpan = new ForegroundColorSpan(this.f397a.getResources().getColor(R.color.colorPrimary));
                        } else {
                            foregroundColorSpan = new ForegroundColorSpan(this.f397a.getResources().getColor(R.color.green_blue_two));
                        }
                        if (valueOf.doubleValue() == 0.0d) {
                            spannableStringBuilder.setSpan(foregroundColorSpan, 0, str.length(), 18);
                        } else {
                            spannableStringBuilder.setSpan(foregroundColorSpan, 0, j.formatDouble(valueOf, Locale.getDefault()).length(), 18);
                        }
                        aVar.c.setText(spannableStringBuilder);
                    }
                }
                if (i % 2 == 0) {
                    aVar.f399a.setBackgroundColor(this.f397a.getResources().getColor(R.color.white_three));
                    return;
                }
                aVar.f399a.setBackgroundColor(this.f397a.getResources().getColor(R.color.pure_white));
            }
        }
    }

    public final int getItemCount() {
        List<RideHistoryDetailRow> list = this.f398b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }
}
