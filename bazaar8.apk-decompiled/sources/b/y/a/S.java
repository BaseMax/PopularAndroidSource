package b.y.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* compiled from: StaggeredGridLayoutManager */
class S implements Parcelable.Creator<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> {
    public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem createFromParcel(Parcel parcel) {
        return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(parcel);
    }

    public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] newArray(int i2) {
        return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[i2];
    }
}
