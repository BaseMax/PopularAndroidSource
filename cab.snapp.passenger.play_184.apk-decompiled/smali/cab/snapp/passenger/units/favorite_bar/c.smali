.class public final Lcab/snapp/passenger/units/favorite_bar/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/a/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;",
        "Lcab/snapp/passenger/units/favorite_bar/a;",
        ">;",
        "Lcab/snapp/passenger/a/f$c;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/a/f;

.field private c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAddFavoriteClick()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_bar/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_bar/a;->handleAddFavorite()V

    :cond_0
    return-void
.end method

.method public final onFavoriteClick(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->FAVORITE:Ljava/lang/String;

    const-string v3, "Select Favorite"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_bar/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_bar/a;->favoriteSelected(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    :cond_0
    return-void
.end method

.method public final onFavoriteModelListReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;

    if-eqz v0, :cond_3

    .line 48
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v1

    invoke-interface {v1, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/favorite_bar/c;)V

    .line 53
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->b:Lcab/snapp/passenger/a/f;

    if-nez v1, :cond_1

    .line 55
    new-instance v1, Lcab/snapp/passenger/a/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcab/snapp/passenger/a/f;-><init>(Landroid/content/Context;Ljava/util/List;Lcab/snapp/passenger/a/f$c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->b:Lcab/snapp/passenger/a/f;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1, p1}, Lcab/snapp/passenger/a/f;->updateData(Ljava/util/List;)V

    .line 61
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez p1, :cond_2

    .line 63
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 65
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->b:Lcab/snapp/passenger/a/f;

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_bar/c;->c:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->loadFavoriteList(Lcab/snapp/passenger/a/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_3
    :goto_1
    return-void
.end method
