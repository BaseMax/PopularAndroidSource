.class public Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    .line 26
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0a00bd

    const-string v2, "field \'cellFavoriteAddressAddBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAddBtn:Landroid/widget/Button;

    .line 27
    const-class v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a00c1

    const-string v2, "field \'cellFavoriteAddressEditBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressEditBtn:Landroid/widget/ImageButton;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00c2

    const-string v2, "field \'cellFavoriteAddressMapIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressMapIv:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00be

    const-string v2, "field \'cellFavoriteAddressAreaTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAreaTv:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00c4

    const-string v2, "field \'cellFavoriteAddressTitleTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressTitleTv:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00c0

    const-string v2, "field \'cellFavoriteAddressDetailTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a00bf

    const-string v2, "field \'cellFavoriteAddressDetailTvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTvTitle:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a00c3

    const-string v2, "field \'cellFavoriteAddressSelectBtn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    .line 43
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAddBtn:Landroid/widget/Button;

    .line 44
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressEditBtn:Landroid/widget/ImageButton;

    .line 45
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressMapIv:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAreaTv:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressTitleTv:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTvTitle:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
