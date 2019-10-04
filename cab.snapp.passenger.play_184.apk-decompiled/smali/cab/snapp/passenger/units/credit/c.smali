.class public final Lcab/snapp/passenger/units/credit/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/credit/CreditView;",
        "Lcab/snapp/passenger/units/credit/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final addCreditButtonClicked()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->PAYMENT:Ljava/lang/String;

    const-string v3, "Credit History"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->showAddCreditDialog()V

    :cond_0
    return-void
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/c;->c:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final hideLoading()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final initViews()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/credit/c;)V

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    const v1, 0x7f12026a

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/credit/CreditView;->setToolbarTitle(I)V

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->setToolbarBackButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/a;->goBack()V

    :cond_0
    return-void
.end method

.method public final onDataRequestSucceed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->hideEmptyLayout()V

    .line 81
    new-instance v1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

    invoke-direct {v1, p1}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/credit/c;->a:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

    .line 82
    iget-object p1, p0, Lcab/snapp/passenger/units/credit/c;->a:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->setupRecyclerView(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;)V

    return-void

    .line 86
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->showEmptyLayout()V

    return-void
.end method

.method public final onSupportItemClicked(Ljava/lang/String;)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/credit/a;->goToItemSupport(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final rowItemClicked(ILcab/snapp/passenger/data/models/Transaction;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/credit/CreditView;->showSupportDialog(Lcab/snapp/passenger/data/models/Transaction;)V

    :cond_0
    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/c;->c:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 159
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/credit/CreditView;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final showLoading()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/CreditView;->showLoadingDialog()V

    :cond_0
    return-void
.end method
