.class public Lcab/snapp/passenger/units/search/SearchView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/search/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/search/c;

.field protected b:Lbutterknife/Unbinder;

.field deleteInputTextBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0447
    .end annotation
.end field

.field emptyLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0448
    .end annotation
.end field

.field loading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044a
    .end annotation
.end field

.field loadingLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044b
    .end annotation
.end field

.field resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044c
    .end annotation
.end field

.field searchEt:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0449
    .end annotation
.end field

.field startVoiceSearchBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0451
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044d
    .end annotation
.end field

.field toolbarBackBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044e
    .end annotation
.end field

.field toolbarBaseLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a044f
    .end annotation
.end field

.field toolbarTitleTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0450
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getVoiceSearchImageView()Landroid/view/View;
    .locals 1

    .line 330
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->startVoiceSearchBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideDeleteInputTextBtn()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->deleteInputTextBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideEmptyView()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->emptyLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public hideLoadingView()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->loadingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRecyclerView()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public hideVoiceSearchBtn()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->startVoiceSearchBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public loadSearchResults(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcab/snapp/passenger/a/g;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    iget-object p1, p0, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onBackClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a044e
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->a:Lcab/snapp/passenger/units/search/c;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method public onDeleteInputTextClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0447
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->a:Lcab/snapp/passenger/units/search/c;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onDeleteInputTextClicked()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 315
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 316
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public onVoiceSearchClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0451
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->a:Lcab/snapp/passenger/units/search/c;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/c;->onVoiceSearchClicked()V

    :cond_0
    return-void
.end method

.method public setFocusOnSearchView()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->requestFocus()Z

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 29
    check-cast p1, Lcab/snapp/passenger/units/search/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/search/SearchView;->setPresenter(Lcab/snapp/passenger/units/search/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/search/c;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcab/snapp/passenger/units/search/SearchView;->a:Lcab/snapp/passenger/units/search/c;

    return-void
.end method

.method public setSearchEtText(Ljava/lang/String;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchEtTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->toolbarTitleTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDeleteInputTextBtn()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->deleteInputTextBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showEmptyView()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->emptyLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/search/SearchView;->searchEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->loadingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showRecyclerView()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->resultsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showVoiceSearchBtn()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/search/SearchView;->startVoiceSearchBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
