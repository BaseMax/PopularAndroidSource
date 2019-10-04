.class public final Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/g/a;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    .line 62
    iput-boolean p2, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->c:Z

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 226
    iget-object p3, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    .line 227
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getId()I

    move-result p1

    const/4 v0, 0x0

    .line 226
    invoke-interface {p3, p1, p2, v0}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 215
    iget-object p3, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressEditBtn:Landroid/widget/ImageButton;

    .line 216
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result p1

    const/4 v0, 0x0

    .line 215
    invoke-interface {p3, p1, p2, v0}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 207
    iget-object p3, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAddBtn:Landroid/widget/Button;

    .line 208
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    const/4 v0, 0x0

    .line 207
    invoke-interface {p3, p1, p2, v0}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$4hdRbDyMp4IABr_zQ9ahrqqMiJk(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->c(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$4zIo7pSCPIPLF1ADr0CFnPsJgSY(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$8PFN1S1tHqUFMgNIOtuPKpPrJVA(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItem(I)Lcab/snapp/passenger/data/models/FavoriteModel;
    .locals 2

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 120
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/FavoriteModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getItemClickListener()Lcab/snapp/passenger/g/a;
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 33
    check-cast p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->onBindViewHolder(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;I)V
    .locals 6

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 149
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAreaTv:Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAreaTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTvTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 165
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 174
    :cond_1
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTvTitle:Landroid/widget/TextView;

    iget-object v4, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1200b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    if-eqz v1, :cond_2

    .line 180
    iget-object v4, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressDetailTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-interface {v1, v4, p2, v3}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    .line 184
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 186
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressTitleTv:Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 192
    :cond_3
    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :goto_2
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FavoriteModel;->getMapUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 199
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/x;->centerCrop()Lcom/squareup/picasso/x;

    move-result-object v0

    iget-object v1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressMapIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 204
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAddBtn:Landroid/widget/Button;

    new-instance v2, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$4hdRbDyMp4IABr_zQ9ahrqqMiJk;

    invoke-direct {v2, p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$4hdRbDyMp4IABr_zQ9ahrqqMiJk;-><init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressEditBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$8PFN1S1tHqUFMgNIOtuPKpPrJVA;

    invoke-direct {v2, p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$8PFN1S1tHqUFMgNIOtuPKpPrJVA;-><init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-boolean v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->c:Z

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 225
    iget-object v0, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$4zIo7pSCPIPLF1ADr0CFnPsJgSY;

    invoke-direct {v2, p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/-$$Lambda$FavoriteAddressAdapter$4zIo7pSCPIPLF1ADr0CFnPsJgSY;-><init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;I)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 234
    :cond_5
    iget-object p2, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 240
    :cond_6
    :goto_3
    iget-object p1, p1, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->cellFavoriteAddressAddBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;
    .locals 3

    .line 138
    new-instance p2, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0050

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;-><init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setItemClickListener(Lcab/snapp/passenger/g/a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->b:Lcab/snapp/passenger/g/a;

    return-void
.end method

.method public final updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
