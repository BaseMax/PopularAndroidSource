.class final Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;-><init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

.field final synthetic b:Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;Lcab/snapp/passenger/units/sideMenu/SideMenuView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;->b:Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcab/snapp/passenger/units/sideMenu/SideMenuView_ViewBinding$2;->a:Lcab/snapp/passenger/units/sideMenu/SideMenuView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/sideMenu/SideMenuView;->onFooterSnappFoodLayoutClicked()V

    return-void
.end method