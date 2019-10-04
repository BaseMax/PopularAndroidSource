.class final Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/sideMenu/SideMenuView;->initScrollGestures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->a(Lcab/snapp/passenger/units/sideMenu/SideMenuView;I)I

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object v0, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 155
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object v0, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object v1, v1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    iget-object v0, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/sideMenu/SideMenuView$1$1;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
