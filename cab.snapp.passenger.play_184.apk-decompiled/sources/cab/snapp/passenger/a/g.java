package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data_access_layer.network.responses.FavoriteResponse;
import cab.snapp.passenger.play.R;
import java.util.List;
import java.util.Locale;

public final class g extends RecyclerView.Adapter<e> {
    public static final int TYPE_FAVORITE = 3;
    public static final int TYPE_GEOCODE = 2;
    public static final int TYPE_HEADER = 1;

    /* renamed from: a  reason: collision with root package name */
    private Context f377a;

    /* renamed from: b  reason: collision with root package name */
    private List<FavoriteModel> f378b;
    private List<GeocodeMasterModel> c;
    /* access modifiers changed from: private */
    public d d;
    private boolean e = false;

    public class a extends e {

        /* renamed from: a  reason: collision with root package name */
        View f383a;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f384b;
        AppCompatTextView c;

        a(View view) {
            super(view);
            this.f383a = view;
            this.f384b = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_favorite_title_tv);
            this.c = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_favorite_address_tv);
        }
    }

    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        View f385a;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f386b;
        AppCompatTextView c;
        ImageView d;
        AppCompatTextView e;

        b(View view) {
            super(view);
            this.f385a = view;
            this.f386b = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_geocode_title_tv);
            this.c = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_geocode_address_tv);
            this.d = (ImageView) view.findViewById(R.id.geocode_search_list_geocode_type_icon_iv);
            this.e = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_geocode_distance_tv);
        }
    }

    public class c extends e {

        /* renamed from: a  reason: collision with root package name */
        View f387a;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f388b;
        ImageView c;

        c(View view) {
            super(view);
            this.f387a = view;
            this.f388b = (AppCompatTextView) view.findViewById(R.id.geocode_search_list_header_title_tv);
            this.c = (ImageView) view.findViewById(R.id.geocode_search_list_header_powered_by_iv);
        }
    }

    public interface d {
        void onItemClick(int i, GeocodeMasterModel geocodeMasterModel, boolean z);
    }

    class e extends RecyclerView.ViewHolder {
        e(View view) {
            super(view);
        }
    }

    public g(Context context, FavoriteResponse favoriteResponse, boolean z, d dVar) {
        this.f377a = context;
        this.d = dVar;
        this.e = z;
        if (favoriteResponse != null && favoriteResponse.getFavoriteModelList() != null) {
            this.f378b = favoriteResponse.getFavoriteModelList();
        }
    }

    public g(Context context, List<GeocodeMasterModel> list, boolean z, d dVar) {
        this.f377a = context;
        this.d = dVar;
        this.c = list;
        this.e = z;
    }

    public final e onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = this.f377a;
        if (context == null) {
            return null;
        }
        if (i == 1) {
            return new c(LayoutInflater.from(context).inflate(R.layout.geocode_search_list_header, viewGroup, false));
        }
        if (i == 2) {
            return new b(LayoutInflater.from(context).inflate(R.layout.geocode_search_list_geocode, viewGroup, false));
        }
        if (i != 3) {
            return null;
        }
        return new a(LayoutInflater.from(context).inflate(R.layout.geocode_search_list_favorite, viewGroup, false));
    }

    public final void onBindViewHolder(final e eVar, int i) {
        String str;
        if (!(this.f377a == null || eVar == null)) {
            if (eVar instanceof c) {
                if (this.c != null) {
                    c cVar = (c) eVar;
                    cVar.f388b.setText(R.string.search_results);
                    if (this.e) {
                        cVar.c.setVisibility(0);
                    } else {
                        cVar.c.setVisibility(4);
                    }
                } else if (this.f378b != null) {
                    c cVar2 = (c) eVar;
                    cVar2.f388b.setText(R.string.favorite_addresses);
                    cVar2.c.setVisibility(4);
                }
            } else if (eVar instanceof b) {
                List<GeocodeMasterModel> list = this.c;
                if (list != null) {
                    int i2 = i - 1;
                    if (list.get(i2) != null) {
                        final GeocodeMasterModel geocodeMasterModel = this.c.get(i2);
                        if (cab.snapp.passenger.f.g.getSavedLocale() == 10) {
                            ((b) eVar).f386b.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(geocodeMasterModel.getName()));
                        } else if (geocodeMasterModel.getName_en() == null || geocodeMasterModel.getName_en().isEmpty()) {
                            ((b) eVar).f386b.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(geocodeMasterModel.getName()));
                        } else {
                            ((b) eVar).f386b.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(geocodeMasterModel.getName_en()));
                        }
                        b bVar = (b) eVar;
                        bVar.c.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(geocodeMasterModel.getAddress()));
                        if (geocodeMasterModel.getDistance() == -1) {
                            bVar.e.setVisibility(8);
                        } else {
                            bVar.e.setVisibility(0);
                            AppCompatTextView appCompatTextView = bVar.e;
                            int distance = geocodeMasterModel.getDistance();
                            if (distance < 0) {
                                str = null;
                            } else if (distance < 1000) {
                                str = distance + " m";
                            } else if (distance < 10000) {
                                float f = ((float) distance) / 1000.0f;
                                if (cab.snapp.passenger.f.g.getSavedLocale() == 10) {
                                    str = String.format(new Locale("fa", "IR"), "%.1f", new Object[]{Float.valueOf(f)}) + " km";
                                } else if (cab.snapp.passenger.f.g.getSavedLocale() == 30) {
                                    str = String.format(new Locale("fr", "FR"), "%.1f", new Object[]{Float.valueOf(f)}) + " km";
                                } else {
                                    str = String.format(new Locale("en", "GB"), "%.1f", new Object[]{Float.valueOf(f)}) + " km";
                                }
                            } else {
                                if (distance / 1000 >= 100) {
                                    str = "+99 km";
                                } else {
                                    str = r5 + " km";
                                }
                            }
                            appCompatTextView.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(str));
                        }
                        bVar.d.setImageResource(cab.snapp.passenger.f.d.getIcon(geocodeMasterModel.getType()));
                        bVar.f385a.setOnClickListener(new View.OnClickListener() {
                            public final void onClick(View view) {
                                if (g.this.d != null) {
                                    g.this.d.onItemClick(eVar.getAdapterPosition(), GeocodeMasterModel.from(geocodeMasterModel), true);
                                }
                            }
                        });
                    }
                }
            } else if (eVar instanceof a) {
                List<FavoriteModel> list2 = this.f378b;
                if (list2 != null) {
                    int i3 = i - 1;
                    if (list2.get(i3) != null) {
                        final FavoriteModel favoriteModel = this.f378b.get(i3);
                        a aVar = (a) eVar;
                        aVar.f384b.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(favoriteModel.getName()));
                        aVar.c.setText(cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(favoriteModel.getFormattedAddress().getFormattedAddress()));
                        aVar.f383a.setOnClickListener(new View.OnClickListener() {
                            public final void onClick(View view) {
                                if (g.this.d != null) {
                                    g.this.d.onItemClick(eVar.getAdapterPosition(), GeocodeMasterModel.from(favoriteModel), false);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    public final int getItemCount() {
        int size;
        List<GeocodeMasterModel> list = this.c;
        if (list != null) {
            size = list.size();
        } else {
            List<FavoriteModel> list2 = this.f378b;
            if (list2 == null) {
                return 0;
            }
            size = list2.size();
        }
        return size + 1;
    }

    public final int getItemViewType(int i) {
        if (i == 0) {
            return 1;
        }
        if (this.c != null) {
            return 2;
        }
        if (this.f378b != null) {
            return 3;
        }
        return super.getItemViewType(i);
    }
}
