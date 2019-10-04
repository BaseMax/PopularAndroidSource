.class public final Lcab/snapp/passenger/units/skippable_mobile_verification/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final goToMainController()V
    .locals 2

    const v0, 0x7f0a007f

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/skippable_mobile_verification/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
