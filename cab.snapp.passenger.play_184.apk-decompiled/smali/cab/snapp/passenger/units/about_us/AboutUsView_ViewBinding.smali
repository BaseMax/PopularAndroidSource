.class public Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/about_us/AboutUsView;

.field private view7f0a0323:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/about_us/AboutUsView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/about_us/AboutUsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/about_us/AboutUsView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->target:Lcab/snapp/passenger/units/about_us/AboutUsView;

    .line 31
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0322

    const-string v2, "field \'loadingAboutUs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/about_us/AboutUsView;->loadingAboutUs:Lcab/snapp/snappuikit/SnappLoading;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0324

    const-string v2, "field \'tvAboutContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvAboutContent:Landroid/widget/TextView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0325

    const-string v2, "field \'tvVersionName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvVersionName:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0321

    const-string v2, "field \'tvApiServer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvApiServer:Landroid/widget/TextView;

    const v0, 0x7f0a0323

    const-string v1, "method \'goToRulesLink\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 36
    iput-object p2, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->view7f0a0323:Landroid/view/View;

    .line 37
    new-instance v0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;Lcab/snapp/passenger/units/about_us/AboutUsView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->target:Lcab/snapp/passenger/units/about_us/AboutUsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->target:Lcab/snapp/passenger/units/about_us/AboutUsView;

    .line 52
    iput-object v1, v0, Lcab/snapp/passenger/units/about_us/AboutUsView;->loadingAboutUs:Lcab/snapp/snappuikit/SnappLoading;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvAboutContent:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvVersionName:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcab/snapp/passenger/units/about_us/AboutUsView;->tvApiServer:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->view7f0a0323:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcab/snapp/passenger/units/about_us/AboutUsView_ViewBinding;->view7f0a0323:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
