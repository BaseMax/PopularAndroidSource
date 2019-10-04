package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.c.j;
import cab.snapp.passenger.a.a;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<C0015a> f346a;

    /* renamed from: b  reason: collision with root package name */
    private long f347b;
    private cab.snapp.passenger.g.b<Long> c;

    /* renamed from: cab.snapp.passenger.a.a$a  reason: collision with other inner class name */
    public static class C0015a {

        /* renamed from: a  reason: collision with root package name */
        long f348a;
    }

    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        AppCompatTextView f349a;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f350b;
        View c;

        b(View view) {
            super(view);
            this.f349a = (AppCompatTextView) view.findViewById(R.id.tv_charge_amount);
            this.f350b = (AppCompatTextView) view.findViewById(R.id.tv_currency);
            this.c = view.findViewById(R.id.rl_amount_root);
        }
    }

    public final void setSelectedAmount(long j) {
        this.f347b = j;
        notifyDataSetChanged();
    }

    private void a(long j) {
        setSelectedAmount(j);
        cab.snapp.passenger.g.b<Long> bVar = this.c;
        if (bVar != null) {
            bVar.run(Long.valueOf(j));
        }
    }

    public final long getSelectedAmount() {
        return this.f347b;
    }

    public final void setOnAmountSelectedListener(cab.snapp.passenger.g.b<Long> bVar) {
        this.c = bVar;
    }

    public a(ArrayList<C0015a> arrayList) {
        this.f346a = arrayList;
    }

    public final ArrayList<C0015a> getItems() {
        return this.f346a;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_charge_amount, viewGroup, false));
    }

    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        C0015a aVar = this.f346a.get(i);
        Context context = viewHolder.itemView.getContext();
        if (context != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener(aVar, i) {
                private final /* synthetic */ a.C0015a f$1;
                private final /* synthetic */ int f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    a.this.a(this.f$1, this.f$2, view);
                }
            });
            b bVar = (b) viewHolder;
            long j = aVar.f348a;
            bVar.f349a.setText(j.formatLong(j));
            if (j == this.f347b) {
                bVar.c.setBackgroundResource(R.drawable.shape_button_grayish_brown_round);
                bVar.f349a.setTextColor(ContextCompat.getColor(context, R.color.white));
                bVar.f350b.setTextColor(ContextCompat.getColor(context, R.color.white));
                return;
            }
            bVar.c.setBackgroundResource(R.drawable.selector_button_charge_amount);
            bVar.f349a.setTextColor(ContextCompat.getColor(context, R.color.grayish_brown));
            bVar.f350b.setTextColor(ContextCompat.getColor(context, R.color.grayish_brown));
        }
    }

    public final int getItemCount() {
        return this.f346a.size();
    }

    public final void setItems(List<Long> list) {
        this.f346a.clear();
        for (Long longValue : list) {
            long longValue2 = longValue.longValue();
            ArrayList<C0015a> arrayList = this.f346a;
            C0015a aVar = new C0015a();
            aVar.f348a = longValue2;
            arrayList.add(aVar);
        }
        notifyDataSetChanged();
    }

    public final void selectOperator(long j) {
        Iterator<C0015a> it = this.f346a.iterator();
        while (it.hasNext()) {
            C0015a next = it.next();
            if (j == next.f348a && next.f348a != this.f347b) {
                a(next.f348a);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(C0015a aVar, int i, View view) {
        a(aVar.f348a);
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", i != 0 ? i != 1 ? i != 2 ? "" : "ThirdAmount" : "SecondAmount" : "FirstAmount").build());
    }
}
