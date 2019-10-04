.class public Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

.field private view7f0a0341:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;-><init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0347

    const-string v2, "field \'viewFavoriteAddressRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0343

    const-string v2, "field \'viewFavoriteAddressEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressEmpty:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0341

    const-string v1, "field \'viewFavoriteAddressAddBtn\' and method \'onAddFavoriteAddressClick\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    const-class v1, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const-string v2, "field \'viewFavoriteAddressAddBtn\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressAddBtn:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 36
    iput-object p2, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->view7f0a0341:Landroid/view/View;

    .line 37
    new-instance v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;

    .line 52
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressEmpty:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressAddBtn:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->view7f0a0341:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView_ViewBinding;->view7f0a0341:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
