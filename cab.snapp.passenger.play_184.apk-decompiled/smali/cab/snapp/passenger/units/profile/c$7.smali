.class final Lcab/snapp/passenger/units/profile/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappuikit/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/profile/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/profile/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/profile/c;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c$7;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final editTextClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onActionButtonCLicked()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c$7;->a:Lcab/snapp/passenger/units/profile/c;

    .line 1774
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1776
    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/a;->a()V

    :cond_0
    return-void
.end method

.method public final onEditTextClicked()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c$7;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onEmailClicked()V

    return-void
.end method
