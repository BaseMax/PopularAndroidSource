.class public Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/favorite_address/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/favorite_address/c;

.field protected b:Lcab/snapp/snappuikit/c;

.field protected c:Lcab/snapp/passenger/f/r;

.field private d:Lcab/snapp/snappdialog/b;

.field private e:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

.field private f:Lcab/snapp/snappdialog/b;

.field viewFavoriteAddressAddBtn:Lcab/snapp/snappuikit/SnappFloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0341
    .end annotation
.end field

.field viewFavoriteAddressEmpty:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0343
    .end annotation
.end field

.field viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0347
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->d:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 168
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->onBackButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$4H4PtUcOja9pDfKo_C57EBo4kuA(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$NvhLzr4hiq2KNKcTo7aE2GuMfqs(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancelEditFavoriteAddressDialog()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 343
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public hideEmptyLayout()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressEmpty:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public onAddFavoriteAddressClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0341
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onAddFavoriteAddressClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 382
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 383
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 384
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->c:Lcab/snapp/passenger/f/r;

    .line 385
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->b:Lcab/snapp/snappuikit/c;

    .line 4144
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->b:Lcab/snapp/snappuikit/c;

    const v1, 0x7f1200d1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 4145
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->b:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$FavoriteAddressView$NvhLzr4hiq2KNKcTo7aE2GuMfqs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$FavoriteAddressView$NvhLzr4hiq2KNKcTo7aE2GuMfqs;-><init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(IILjava/lang/Object;)V
    .locals 6

    .line 245
    iget-object p3, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->e:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    if-nez p3, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 267
    :pswitch_1
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    .line 268
    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->getItem(I)Lcab/snapp/passenger/data/models/FavoriteModel;

    move-result-object p2

    .line 3059
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 3061
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/a;

    .line 3162
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p3}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p3

    if-nez p3, :cond_1

    .line 3164
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->c:Lcab/snapp/passenger/c/e;

    invoke-virtual {p3}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3165
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3168
    iget-object v0, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 3169
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3168
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setOriginLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3171
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 3172
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v1

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3171
    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3175
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationPlaceId(I)V

    .line 3178
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationFormattedAddress(Ljava/lang/String;)V

    .line 3179
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/c/g;->setDestinationFormattedDetailsAddress(Ljava/lang/String;)V

    goto :goto_0

    .line 3184
    :cond_1
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p3}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 3186
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 3187
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v1

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3186
    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3190
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationPlaceId(I)V

    .line 3193
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcab/snapp/passenger/c/g;->setDestinationFormattedAddress(Ljava/lang/String;)V

    .line 3194
    iget-object p3, p1, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/c/g;->setDestinationFormattedDetailsAddress(Ljava/lang/String;)V

    .line 3198
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3200
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/e;->navigateUp()V

    goto :goto_1

    .line 257
    :pswitch_2
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    .line 258
    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->getItem(I)Lcab/snapp/passenger/data/models/FavoriteModel;

    move-result-object p2

    .line 257
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_address/c;->a(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    return-void

    .line 262
    :pswitch_3
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    .line 263
    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->getItem(I)Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 2072
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2074
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    :cond_3
    return-void

    .line 252
    :pswitch_4
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    .line 253
    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->getItem(I)Lcab/snapp/passenger/data/models/FavoriteModel;

    move-result-object p2

    .line 1085
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1087
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/a;

    .line 1135
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1137
    new-instance p3, Lcab/snapp/passenger/f/n;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcab/snapp/passenger/f/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/f/n;->createHomeScreenShortcut(Lcab/snapp/passenger/data/models/FavoriteModel;)Z

    .line 1138
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 1140
    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_address/c;->onShortcutCreated(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bd
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 35
    check-cast p1, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->setPresenter(Lcab/snapp/passenger/units/favorite_address/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/favorite_address/c;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->a:Lcab/snapp/passenger/units/favorite_address/c;

    return-void
.end method

.method public setupRecyclerView(Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;)V
    .locals 4

    .line 222
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->e:Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;

    .line 223
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 224
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 226
    new-instance v0, Lcab/snapp/snappuikit/c/c;

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcab/snapp/snappuikit/c/c;-><init>(I)V

    .line 229
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 231
    new-instance v0, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$GGyO1W7BVoVq3LgNRc8eou0P_tM;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$GGyO1W7BVoVq3LgNRc8eou0P_tM;-><init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;)V

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/favorite_address/adapter/FavoriteAddressAdapter;->setItemClickListener(Lcab/snapp/passenger/g/a;)V

    .line 232
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showEditFavoriteAddressDialog(IIIILjava/lang/String;Landroid/text/TextWatcher;IILjava/lang/String;Landroid/text/TextWatcher;ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/d$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/d$a;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p3

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p4

    invoke-virtual {v1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    move-object v1, p5

    .line 315
    invoke-virtual {v0, p5}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    move-object v1, p6

    .line 316
    invoke-virtual {v0, p6}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p7

    invoke-virtual {v1, p7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEditTextTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p8

    invoke-virtual {v1, p8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    move-object v1, p9

    .line 319
    invoke-virtual {v0, p9}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEditTextText(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    move-object v1, p10

    .line 320
    invoke-virtual {v0, p10}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setSecondEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v0

    .line 322
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    move v2, p1

    .line 323
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    move v2, p2

    .line 324
    invoke-virtual {v1, p2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 325
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->build()Lcab/snapp/snappdialog/dialogViews/a/d;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    move v1, p11

    move-object v2, p12

    .line 326
    invoke-virtual {v0, p11, p12}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    move/from16 v1, p13

    move-object/from16 v2, p14

    .line 327
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->f:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showEmptyLayout()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->viewFavoriteAddressEmpty:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showErrorDialog(I)V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 3

    .line 157
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 162
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$FavoriteAddressView$4H4PtUcOja9pDfKo_C57EBo4kuA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$FavoriteAddressView$4H4PtUcOja9pDfKo_C57EBo4kuA;-><init>(Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->d:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/FavoriteAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method
