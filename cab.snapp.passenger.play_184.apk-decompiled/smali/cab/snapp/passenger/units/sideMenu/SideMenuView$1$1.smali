.class final Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 163
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p1, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p1, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    .line 164
    iget-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    iget-object p3, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p3, p3, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p3, p3, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p3

    sub-int/2addr p2, p3

    mul-int/lit16 p1, p1, 0x168

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    neg-float p1, p1

    .line 166
    iget-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    iget-object p3, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p3, p3, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-static {p3}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->a(Lcab/snapp/passenger/units/sideMenu/SideMenuView;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object v0, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lcab/snapp/c/e;->convertDpToPixel(Landroid/content/Context;F)F

    move-result v0

    sub-float/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 167
    iget-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 168
    iget-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object p2, p2, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method
