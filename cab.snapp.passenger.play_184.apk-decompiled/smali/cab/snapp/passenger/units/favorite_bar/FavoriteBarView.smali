.class public Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/favorite_bar/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/favorite_bar/c;

.field favoriteRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0348
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public loadFavoriteList(Lcab/snapp/passenger/a/f;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->favoriteRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object p2, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->favoriteRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 103
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 18
    check-cast p1, Lcab/snapp/passenger/units/favorite_bar/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->setPresenter(Lcab/snapp/passenger/units/favorite_bar/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/favorite_bar/c;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/FavoriteBarView;->a:Lcab/snapp/passenger/units/favorite_bar/c;

    return-void
.end method
