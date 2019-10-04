package cab.snapp.passenger.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.a.d;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import io.reactivex.z;
import java.util.ArrayList;
import java.util.List;

public final class d extends RecyclerView.Adapter<b> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<a> f364a;

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.j.b<a> f365b = io.reactivex.j.b.create();

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f366a;

        public final String getMobileNumber() {
            return this.f366a;
        }

        public static a createItem(String str) {
            a aVar = new a();
            aVar.f366a = str;
            return aVar;
        }
    }

    public static class b extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        protected AppCompatTextView f367a;

        b(View view) {
            super(view);
            this.f367a = (AppCompatTextView) view.findViewById(R.id.tv_mobile_number);
        }
    }

    public d(ArrayList<a> arrayList) {
        this.f364a = arrayList;
    }

    public final z<a> getItemClicks() {
        return this.f365b;
    }

    public final ArrayList<a> getItems() {
        return this.f364a;
    }

    public final b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_mobile_number, viewGroup, false));
    }

    public final void onBindViewHolder(b bVar, int i) {
        a aVar = this.f364a.get(i);
        if (bVar.itemView.getContext() != null) {
            bVar.itemView.setOnClickListener(new View.OnClickListener(i, aVar) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ d.a f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    d.this.a(this.f$1, this.f$2, view);
                }
            });
            String mobileNumber = aVar.getMobileNumber();
            if (mobileNumber != null) {
                bVar.f367a.setText(mobileNumber);
            }
        }
    }

    public final int getItemCount() {
        return this.f364a.size();
    }

    public final void addItems(List<String> list) {
        for (String createItem : list) {
            this.f364a.add(a.createItem(createItem));
        }
        notifyDataSetChanged();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i, a aVar, View view) {
        c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("TapOnRecently", "Recently".concat(String.valueOf(i))).addOuterKeyToCurrentAsValue("EnterPhoneNumber").build());
        this.f365b.onNext(aVar);
    }
}
