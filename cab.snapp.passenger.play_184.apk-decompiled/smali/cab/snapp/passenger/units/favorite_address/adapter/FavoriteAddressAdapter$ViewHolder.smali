.class Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

.field cellFavoriteAddressAddBtn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00bd
    .end annotation
.end field

.field cellFavoriteAddressAreaTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00be
    .end annotation
.end field

.field cellFavoriteAddressDetailTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c0
    .end annotation
.end field

.field cellFavoriteAddressDetailTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00bf
    .end annotation
.end field

.field cellFavoriteAddressEditBtn:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c1
    .end annotation
.end field

.field cellFavoriteAddressMapIv:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c2
    .end annotation
.end field

.field cellFavoriteAddressSelectBtn:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c3
    .end annotation
.end field

.field cellFavoriteAddressTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00c4
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;Landroid/view/View;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter$ViewHolder;->a:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    .line 317
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 318
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
