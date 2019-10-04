package cab.snapp.passenger.units.search;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.a.g;
import cab.snapp.snappuikit.SnappLoading;

public class SearchView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1142a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1143b;
    @BindView(2131362887)
    ImageView deleteInputTextBtn;
    @BindView(2131362888)
    LinearLayout emptyLayout;
    @BindView(2131362890)
    SnappLoading loading;
    @BindView(2131362891)
    LinearLayout loadingLayout;
    @BindView(2131362892)
    RecyclerView resultsRecycler;
    @BindView(2131362889)
    AppCompatEditText searchEt;
    @BindView(2131362897)
    ImageView startVoiceSearchBtn;
    @BindView(2131362893)
    Toolbar toolbar;
    @BindView(2131362894)
    ImageView toolbarBackBtn;
    @BindView(2131362895)
    RelativeLayout toolbarBaseLayout;
    @BindView(2131362896)
    AppCompatTextView toolbarTitleTv;

    public SearchView(Context context) {
        super(context);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362894})
    public void onBackClick() {
        c cVar = this.f1142a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    @OnClick({2131362897})
    public void onVoiceSearchClick() {
        c cVar = this.f1142a;
        if (cVar != null) {
            cVar.onVoiceSearchClicked();
        }
    }

    @OnClick({2131362887})
    public void onDeleteInputTextClick() {
        c cVar = this.f1142a;
        if (cVar != null) {
            cVar.onDeleteInputTextClicked();
        }
    }

    public void setToolbarTitle(String str) {
        this.toolbarTitleTv.setText(str);
    }

    public void loadSearchResults(RecyclerView.LayoutManager layoutManager, g gVar) {
        this.resultsRecycler.setLayoutManager(layoutManager);
        this.resultsRecycler.setAdapter(gVar);
    }

    public void showEmptyView() {
        this.emptyLayout.setVisibility(0);
    }

    public void hideEmptyView() {
        this.emptyLayout.setVisibility(8);
    }

    public void showLoadingView() {
        this.loadingLayout.setVisibility(0);
    }

    public void hideLoadingView() {
        this.loadingLayout.setVisibility(8);
    }

    public void showRecyclerView() {
        this.resultsRecycler.setVisibility(0);
    }

    public void hideRecyclerView() {
        this.resultsRecycler.setVisibility(8);
    }

    public void showVoiceSearchBtn() {
        this.startVoiceSearchBtn.setVisibility(0);
    }

    public void hideVoiceSearchBtn() {
        this.startVoiceSearchBtn.setVisibility(8);
    }

    public void showDeleteInputTextBtn() {
        this.deleteInputTextBtn.setVisibility(0);
    }

    public void hideDeleteInputTextBtn() {
        this.deleteInputTextBtn.setVisibility(8);
    }

    public void setSearchEtTextWatcher(TextWatcher textWatcher) {
        this.searchEt.addTextChangedListener(textWatcher);
    }

    public void setFocusOnSearchView() {
        this.searchEt.requestFocus();
    }

    public void setSearchEtText(String str) {
        this.searchEt.setText(str);
    }

    public void hideKeyboard() {
        c.tryHideKeyboard(getContext(), this);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1143b = ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1142a = cVar;
    }

    public View getVoiceSearchImageView() {
        return this.startVoiceSearchBtn;
    }

    public void showKeyboard() {
        if (getContext() != null) {
            c.showKeyboard(getContext(), this.searchEt);
        }
    }
}
