.class public final Lcab/snapp/passenger/units/favorite_address/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;",
        "Lcab/snapp/passenger/units/favorite_address/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V
    .locals 0

    .line 2206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/favorite_address/a;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/favorite_address/a;->b(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->cancelEditFavoriteAddressDialog()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/FavoriteModel;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const/4 p4, 0x0

    .line 148
    aget-object p2, p2, p4

    aget-object p3, p3, p4

    .line 2222
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 2225
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 2236
    :cond_1
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->setName(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {p1, p3}, Lcab/snapp/passenger/data/models/FavoriteModel;->setDetailAddress(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/favorite_address/a;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/favorite_address/a;->a(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    const/4 p4, 0x1

    goto :goto_1

    .line 2227
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    const p2, 0x7f1200d0

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showErrorDialog(I)V

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->cancelEditFavoriteAddressDialog()V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$udoF47ZLN3ldy08vRDDb9QLqeLY(Lcab/snapp/passenger/units/favorite_address/c;Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/c;->a(Lcab/snapp/passenger/data/models/FavoriteModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$x0IPCR1QtsPB-nivAFmvvrPe3Ao(Lcab/snapp/passenger/units/favorite_address/c;Lcab/snapp/passenger/data/models/FavoriteModel;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/units/favorite_address/c;->a(Lcab/snapp/passenger/data/models/FavoriteModel;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showEmptyLayout()V

    :cond_0
    return-void
.end method

.method final a(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v2, v2, [Ljava/lang/String;

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v6

    .line 107
    new-instance v9, Lcab/snapp/passenger/units/favorite_address/c$1;

    invoke-direct {v9, v0, v4}, Lcab/snapp/passenger/units/favorite_address/c$1;-><init>(Lcab/snapp/passenger/units/favorite_address/c;[Ljava/lang/String;)V

    .line 127
    new-instance v13, Lcab/snapp/passenger/units/favorite_address/c$2;

    invoke-direct {v13, v0, v2}, Lcab/snapp/passenger/units/favorite_address/c$2;-><init>(Lcab/snapp/passenger/units/favorite_address/c;[Ljava/lang/String;)V

    .line 147
    new-instance v15, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$c$x0IPCR1QtsPB-nivAFmvvrPe3Ao;

    invoke-direct {v15, v0, v1, v4, v2}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$c$x0IPCR1QtsPB-nivAFmvvrPe3Ao;-><init>(Lcab/snapp/passenger/units/favorite_address/c;Lcab/snapp/passenger/data/models/FavoriteModel;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    new-instance v2, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$c$udoF47ZLN3ldy08vRDDb9QLqeLY;

    invoke-direct {v2, v0, v1}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$c$udoF47ZLN3ldy08vRDDb9QLqeLY;-><init>(Lcab/snapp/passenger/units/favorite_address/c;Lcab/snapp/passenger/data/models/FavoriteModel;)V

    const v4, 0x7f0800f6

    const v5, 0x7f1200cf

    const v6, 0x7f1200ce

    const v7, 0x7f12012e

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f120028

    const v11, 0x7f12012f

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v12

    const v14, 0x7f1201ed

    const v16, 0x7f1201c7

    move-object/from16 v17, v2

    .line 169
    invoke-virtual/range {v3 .. v17}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showEditFavoriteAddressDialog(IIIILjava/lang/String;Landroid/text/TextWatcher;IILjava/lang/String;Landroid/text/TextWatcher;ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method final a(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;Z)V"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 335
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->hideEmptyLayout()V

    .line 336
    new-instance v1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    invoke-direct {v1, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;-><init>(Ljava/util/List;Z)V

    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_address/c;->a:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    .line 337
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/c;->a:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->setupRecyclerView(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;)V

    return-void

    .line 341
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showEmptyLayout()V

    return-void
.end method

.method public final onAddFavoriteAddressClicked()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->FAVORITE:Ljava/lang/String;

    const-string v3, "Add From List"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/a;

    .line 1210
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/e;->routeToAddFavoriteAddress()V

    :cond_0
    return-void
.end method

.method public final onBackButtonClicked()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onDeleteFavoriteError()V
    .locals 3

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onEditFavoriteSucceed()V
    .locals 3

    .line 350
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final onHideLoading()V
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/favorite_address/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLoading()V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onShortcutCreated(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[fav_name]"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 400
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
