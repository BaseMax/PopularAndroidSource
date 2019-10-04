.class public Lcab/snapp/passenger/units/credit/CreditView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/credit/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_CREDIT_DIALOG:Ljava/lang/String; = "add_credit_dialog"


# instance fields
.field protected a:Lcab/snapp/passenger/units/credit/c;

.field protected b:Lbutterknife/Unbinder;

.field protected c:Lcab/snapp/passenger/f/r;

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Lcab/snapp/snappuikit/c;

.field viewCreditAddBtn:Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0332
    .end annotation
.end field

.field viewCreditEmpty:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0333
    .end annotation
.end field

.field viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0334
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/c;->onBackPressed()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/Transaction;Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Transaction;->getTransactionReference()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 221
    :goto_0
    iget-object p3, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    if-eqz p3, :cond_1

    .line 223
    invoke-virtual {p3, p1}, Lcab/snapp/passenger/units/credit/c;->onSupportItemClicked(Ljava/lang/String;)V

    .line 225
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->dismiss()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$3bN9e967pLlcQF7oIlaX50pynqY(Lcab/snapp/passenger/units/credit/CreditView;Lcab/snapp/passenger/data/models/Transaction;Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/credit/CreditView;->a(Lcab/snapp/passenger/data/models/Transaction;Lcom/google/android/material/bottomsheet/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$96iU9hCXSrRgqdbwttRY8mk8ZjA(Lcab/snapp/passenger/units/credit/CreditView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$eiOcIcKTMaQnnz_P9L2lEOemcO4(Lcab/snapp/passenger/units/credit/CreditView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideEmptyLayout()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditEmpty:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public itemClicked(IILjava/lang/Object;)V
    .locals 1

    .line 168
    instance-of v0, p3, Lcab/snapp/passenger/data/models/Transaction;

    if-eqz v0, :cond_0

    .line 170
    check-cast p3, Lcab/snapp/passenger/data/models/Transaction;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const v0, 0x7f0a018f

    if-ne p1, v0, :cond_1

    .line 174
    iget-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {p1, p2, p3}, Lcab/snapp/passenger/units/credit/c;->rowItemClicked(ILcab/snapp/passenger/data/models/Transaction;)V

    :cond_1
    return-void
.end method

.method public onAddCreditButton(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0332
        }
    .end annotation

    .line 84
    iget-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/c;->addCreditButtonClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->b:Lbutterknife/Unbinder;

    .line 92
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->c:Lcab/snapp/passenger/f/r;

    .line 93
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->e:Lcab/snapp/snappuikit/c;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 40
    check-cast p1, Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->setPresenter(Lcab/snapp/passenger/units/credit/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/credit/c;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    return-void
.end method

.method public setToolbarBackButton()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->e:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$96iU9hCXSrRgqdbwttRY8mk8ZjA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$96iU9hCXSrRgqdbwttRY8mk8ZjA;-><init>(Lcab/snapp/passenger/units/credit/CreditView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->e:Lcab/snapp/snappuikit/c;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    return-void
.end method

.method public setupRecyclerView(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;)V
    .locals 3

    .line 154
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 157
    new-instance v0, Lcab/snapp/snappuikit/c/c;

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcab/snapp/snappuikit/c/c;-><init>(I)V

    .line 160
    iget-object v1, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 161
    new-instance v0, Lcab/snapp/passenger/units/credit/-$$Lambda$6Ew0AB9rd41zPMI_kICTKzuKAXA;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/credit/-$$Lambda$6Ew0AB9rd41zPMI_kICTKzuKAXA;-><init>(Lcab/snapp/passenger/units/credit/CreditView;)V

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->setClickListener(Lcab/snapp/passenger/g/a;)V

    .line 162
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showAddCreditDialog()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/c;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->CREDIT_HISTORY:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 187
    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->newInstance(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcab/snapp/passenger/units/credit/CreditView;->a:Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/credit/c;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "top_up_bottom_sheet"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showEmptyLayout()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditRv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->viewCreditEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 3

    .line 112
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 117
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$eiOcIcKTMaQnnz_P9L2lEOemcO4;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$eiOcIcKTMaQnnz_P9L2lEOemcO4;-><init>(Lcab/snapp/passenger/units/credit/CreditView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/credit/CreditView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/CreditView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showSupportDialog(Lcab/snapp/passenger/data/models/Transaction;)V
    .locals 5

    .line 211
    new-instance v0, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0040

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a5

    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$3bN9e967pLlcQF7oIlaX50pynqY;

    invoke-direct {v3, p0, p1, v0}, Lcab/snapp/passenger/units/credit/-$$Lambda$CreditView$3bN9e967pLlcQF7oIlaX50pynqY;-><init>(Lcab/snapp/passenger/units/credit/CreditView;Lcab/snapp/passenger/data/models/Transaction;Lcom/google/android/material/bottomsheet/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/a;->setContentView(Landroid/view/View;)V

    .line 228
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->show()V

    return-void
.end method
