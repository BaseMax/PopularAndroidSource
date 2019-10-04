.class public final Lcab/snapp/passenger/units/favorite_address/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/favorite_address/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final navigateUp()V
    .locals 0

    .line 26
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseRouter;->navigateUp()V

    return-void
.end method

.method public final routeToAddFavoriteAddress()V
    .locals 1

    const v0, 0x7f0a004f

    .line 18
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_address/e;->navigateTo(I)V

    return-void
.end method
