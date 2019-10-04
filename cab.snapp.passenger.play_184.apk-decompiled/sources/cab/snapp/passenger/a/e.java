package cab.snapp.passenger.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.a.e;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.List;

public final class e extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f368a;

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.j.b<a> f369b = io.reactivex.j.b.create();

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        ChargePackage f370a;

        public final ChargePackage getChargePackage() {
            return this.f370a;
        }
    }

    static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        AppCompatTextView f371a;

        b(View view) {
            super(view);
            this.f371a = (AppCompatTextView) view.findViewById(R.id.tv_charge_type);
        }
    }

    public e(ArrayList<a> arrayList) {
        this.f368a = arrayList;
    }

    public final z<a> getItemClicks() {
        return this.f369b;
    }

    public final ArrayList<a> getItems() {
        return this.f368a;
    }

    public final b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_charge_type, viewGroup, false));
    }

    public final void onBindViewHolder(b bVar, int i) {
        a aVar = this.f368a.get(i);
        if (bVar.itemView.getContext() != null) {
            bVar.itemView.setOnClickListener(new View.OnClickListener(aVar, i) {
                private final /* synthetic */ e.a f$1;
                private final /* synthetic */ int f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    e.this.a(this.f$1, this.f$2, view);
                }
            });
            ChargePackage chargePackage = aVar.getChargePackage();
            if (chargePackage != null) {
                bVar.f371a.setText(chargePackage.getPersianType());
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(a aVar, int i, View view) {
        this.f369b.onNext(aVar);
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnProductType", "Product".concat(String.valueOf(i))).addOuterKeyToCurrentAsValue("EnterAmount").build());
    }

    public final int getItemCount() {
        return this.f368a.size();
    }

    public final void addItems(List<ChargePackage> list) {
        for (ChargePackage chargePackage : list) {
            ArrayList<a> arrayList = this.f368a;
            a aVar = new a();
            aVar.f370a = chargePackage;
            arrayList.add(aVar);
        }
        notifyDataSetChanged();
    }
}
