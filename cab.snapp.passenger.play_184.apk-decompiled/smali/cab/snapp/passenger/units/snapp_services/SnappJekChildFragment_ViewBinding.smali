.class public Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;

    .line 22
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0121

    const-string v2, "field \'imageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->imageView:Landroid/widget/ImageView;

    .line 23
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0122

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->titleView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment_ViewBinding;->target:Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;

    .line 33
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->imageView:Landroid/widget/ImageView;

    .line 34
    iput-object v1, v0, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->titleView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
