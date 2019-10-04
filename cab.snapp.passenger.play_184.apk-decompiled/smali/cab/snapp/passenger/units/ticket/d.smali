.class public final Lcab/snapp/passenger/units/ticket/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/ticket/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final popTicketController(Landroidx/navigation/NavController;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    :cond_0
    return-void
.end method
