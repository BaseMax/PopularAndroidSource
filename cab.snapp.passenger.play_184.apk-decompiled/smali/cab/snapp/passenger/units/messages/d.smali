.class public final Lcab/snapp/passenger/units/messages/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/messages/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final routeToWebHost(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0060

    .line 22
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/messages/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
