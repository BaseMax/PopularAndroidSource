.class public Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a018f

    const-string v2, "field \'itemCreditContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditContainer:Landroid/widget/FrameLayout;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0190

    const-string v2, "field \'itemCreditDateTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a018e

    const-string v2, "field \'itemCreditActionTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditActionTv:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0191

    const-string v2, "field \'itemCreditDescTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDescTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder_ViewBinding;->target:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    .line 36
    iput-object v1, v0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditContainer:Landroid/widget/FrameLayout;

    .line 37
    iput-object v1, v0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditActionTv:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDescTv:Landroid/widget/TextView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
