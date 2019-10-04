package cab.snapp.passenger.units.search;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class SearchView_ViewBinding implements Unbinder {
    private SearchView target;
    private View view7f0a0447;
    private View view7f0a044e;
    private View view7f0a0451;

    public SearchView_ViewBinding(SearchView searchView) {
        this(searchView, searchView);
    }

    public SearchView_ViewBinding(final SearchView searchView, View view) {
        this.target = searchView;
        searchView.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.view_search_toolbar, "field 'toolbar'", Toolbar.class);
        searchView.toolbarBaseLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_search_toolbar_base_layout, "field 'toolbarBaseLayout'", RelativeLayout.class);
        searchView.toolbarTitleTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_search_toolbar_title_tv, "field 'toolbarTitleTv'", AppCompatTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_search_toolbar_back_iv, "field 'toolbarBackBtn' and method 'onBackClick'");
        searchView.toolbarBackBtn = (ImageView) Utils.castView(findRequiredView, R.id.view_search_toolbar_back_iv, "field 'toolbarBackBtn'", ImageView.class);
        this.view7f0a044e = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                searchView.onBackClick();
            }
        });
        searchView.searchEt = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.view_search_geocode_et, "field 'searchEt'", AppCompatEditText.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_search_voice_search_iv, "field 'startVoiceSearchBtn' and method 'onVoiceSearchClick'");
        searchView.startVoiceSearchBtn = (ImageView) Utils.castView(findRequiredView2, R.id.view_search_voice_search_iv, "field 'startVoiceSearchBtn'", ImageView.class);
        this.view7f0a0451 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                searchView.onVoiceSearchClick();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_search_delete_input_text_iv, "field 'deleteInputTextBtn' and method 'onDeleteInputTextClick'");
        searchView.deleteInputTextBtn = (ImageView) Utils.castView(findRequiredView3, R.id.view_search_delete_input_text_iv, "field 'deleteInputTextBtn'", ImageView.class);
        this.view7f0a0447 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                searchView.onDeleteInputTextClick();
            }
        });
        searchView.loadingLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_search_loading_layout, "field 'loadingLayout'", LinearLayout.class);
        searchView.loading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_search_loading, "field 'loading'", SnappLoading.class);
        searchView.resultsRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_search_recycler, "field 'resultsRecycler'", RecyclerView.class);
        searchView.emptyLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_search_empty_layout, "field 'emptyLayout'", LinearLayout.class);
    }

    public void unbind() {
        SearchView searchView = this.target;
        if (searchView != null) {
            this.target = null;
            searchView.toolbar = null;
            searchView.toolbarBaseLayout = null;
            searchView.toolbarTitleTv = null;
            searchView.toolbarBackBtn = null;
            searchView.searchEt = null;
            searchView.startVoiceSearchBtn = null;
            searchView.deleteInputTextBtn = null;
            searchView.loadingLayout = null;
            searchView.loading = null;
            searchView.resultsRecycler = null;
            searchView.emptyLayout = null;
            this.view7f0a044e.setOnClickListener(null);
            this.view7f0a044e = null;
            this.view7f0a0451.setOnClickListener(null);
            this.view7f0a0451 = null;
            this.view7f0a0447.setOnClickListener(null);
            this.view7f0a0447 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
