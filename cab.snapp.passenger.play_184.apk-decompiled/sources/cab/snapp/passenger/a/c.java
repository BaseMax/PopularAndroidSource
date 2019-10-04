package cab.snapp.passenger.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.a.c;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.play.R;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.ac;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class c extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f359a;

    /* renamed from: b  reason: collision with root package name */
    private cab.snapp.passenger.g.b<Integer> f360b;
    private SIMChargeOperator c;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        SIMChargeOperator f362a;

        public static a createOperatorItem(SIMChargeOperator sIMChargeOperator) {
            a aVar = new a();
            aVar.f362a = sIMChargeOperator;
            return aVar;
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        AppCompatImageView f363a;

        b(View view) {
            super(view);
            this.f363a = (AppCompatImageView) view.findViewById(R.id.operator_icon_iv);
        }
    }

    public final void setOnAmountSelectedListener(cab.snapp.passenger.g.b<Integer> bVar) {
        this.f360b = bVar;
    }

    private void a(SIMChargeOperator sIMChargeOperator) {
        this.c = sIMChargeOperator;
        notifyDataSetChanged();
    }

    public final SIMChargeOperator getSelectedItem() {
        return this.c;
    }

    public c(ArrayList<a> arrayList) {
        this.f359a = arrayList;
    }

    public final ArrayList<a> getItems() {
        return this.f359a;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_charge_operator, viewGroup, false));
    }

    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = this.f359a.get(i);
        if (viewHolder.itemView.getContext() != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener(i, aVar) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ c.a f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    c.this.a(this.f$1, this.f$2, view);
                }
            });
            b bVar = (b) viewHolder;
            SIMChargeOperator sIMChargeOperator = aVar.f362a;
            if (sIMChargeOperator != null) {
                String activeUrl = sIMChargeOperator.getActiveUrl();
                String inactiveUrl = sIMChargeOperator.getInactiveUrl();
                if (activeUrl != null && inactiveUrl != null && !TextUtils.isEmpty(activeUrl) && !TextUtils.isEmpty(inactiveUrl)) {
                    Picasso.get().load(sIMChargeOperator.equals(this.c) ? activeUrl : inactiveUrl).into((ImageView) bVar.f363a);
                    Picasso picasso = Picasso.get();
                    if (sIMChargeOperator.equals(this.c)) {
                        activeUrl = inactiveUrl;
                    }
                    picasso.load(activeUrl).into((ac) new ac() {
                        public final void onBitmapFailed(Exception exc, Drawable drawable) {
                        }

                        public final void onBitmapLoaded(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
                        }

                        public final void onPrepareLoad(Drawable drawable) {
                        }
                    });
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, a aVar, View view) {
        cab.snapp.passenger.g.b<Integer> bVar = this.f360b;
        if (bVar != null) {
            bVar.run(Integer.valueOf(i));
        }
        a(aVar.f362a);
    }

    public final int getItemCount() {
        return this.f359a.size();
    }

    public final void setItems(List<SIMChargeOperator> list) {
        this.f359a.clear();
        for (SIMChargeOperator createOperatorItem : list) {
            this.f359a.add(a.createOperatorItem(createOperatorItem));
        }
        notifyDataSetChanged();
    }

    public final void selectOperator(SIMChargeOperator sIMChargeOperator) {
        if (sIMChargeOperator == null) {
            a(null);
            return;
        }
        Iterator<a> it = this.f359a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (sIMChargeOperator.equals(next.f362a) && !next.f362a.equals(this.c)) {
                a(next.f362a);
            }
        }
    }
}
