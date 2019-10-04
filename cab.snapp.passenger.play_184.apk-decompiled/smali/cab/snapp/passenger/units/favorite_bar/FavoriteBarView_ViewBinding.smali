.class public Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView_ViewBinding;-><init>(Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;

    .line 26
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0348

    const-string v2, "field \'favoriteRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->favoriteRecycler:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;

    .line 36
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->favoriteRecycler:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
