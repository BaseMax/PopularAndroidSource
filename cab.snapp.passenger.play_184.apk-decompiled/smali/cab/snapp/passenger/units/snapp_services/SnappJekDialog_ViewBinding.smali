.class public Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;

.field private view7f0a0123:Landroid/view/View;

.field private view7f0a0125:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;Landroid/view/View;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;

    .line 28
    const-class v0, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    const v1, 0x7f0a0124

    const-string v2, "field \'contentViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    const v0, 0x7f0a0125

    const-string v1, "field \'nextBtn\' and method \'goToNext\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'nextBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->nextBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 31
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0125:Landroid/view/View;

    .line 32
    new-instance v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-class v0, Lio/github/kshitij_jain/indicatorview/IndicatorView;

    const v1, 0x7f0a00ea

    const-string v2, "field \'indicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/kshitij_jain/indicatorview/IndicatorView;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->indicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    const v0, 0x7f0a0123

    const-string v1, "method \'closeDialog\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0123:Landroid/view/View;

    .line 41
    new-instance v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;

    .line 56
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->contentViewPager:Lcab/snapp/passenger/units/snapp_services/ViewPagerWithWrapContent;

    .line 57
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->nextBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 58
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog;->indicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0125:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0125:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0123:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekDialog_ViewBinding;->view7f0a0123:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
