.class public Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

.field private view7f0a02a6:Landroid/view/View;

.field private view7f0a02a8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->target:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    .line 35
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a02aa

    const-string v2, "field \'headerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerLayout:Landroid/widget/RelativeLayout;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02ab

    const-string v2, "field \'headerRoadIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerRoadIv:Landroid/widget/ImageView;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a02a9

    const-string v2, "field \'headerCarIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a02ac

    const-string v2, "field \'recycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a02a7

    const-string v2, "field \'footerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a6

    const-string v1, "field \'footerFreeRideLayout\' and method \'onFooterFreeRideLayoutClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'footerFreeRideLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerFreeRideLayout:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a6:Landroid/view/View;

    .line 43
    new-instance v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a8

    const-string v1, "field \'footerSnappFoodLayout\' and method \'onFooterSnappFoodLayoutClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 50
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'footerSnappFoodLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerSnappFoodLayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a8:Landroid/view/View;

    .line 52
    new-instance v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->target:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->target:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    .line 67
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerLayout:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerRoadIv:Landroid/widget/ImageView;

    .line 69
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->headerCarIv:Landroid/widget/ImageView;

    .line 70
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerLayout:Landroid/widget/LinearLayout;

    .line 72
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerFreeRideLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, v0, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->footerSnappFoodLayout:Landroid/widget/LinearLayout;

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a6:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;->view7f0a02a8:Landroid/view/View;

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
