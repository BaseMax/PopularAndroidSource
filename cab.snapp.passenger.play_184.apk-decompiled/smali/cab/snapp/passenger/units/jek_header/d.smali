.class public final Lcab/snapp/passenger/units/jek_header/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/jek_header/a;",
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
.method public final navigateToMainHeader()V
    .locals 1

    const v0, 0x7f0a0057

    .line 15
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/jek_header/d;->navigateTo(I)V

    return-void
.end method
