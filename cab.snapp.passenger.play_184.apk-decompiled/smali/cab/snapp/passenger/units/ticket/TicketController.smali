.class public Lcab/snapp/passenger/units/ticket/TicketController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/ticket/a;",
        "Lcab/snapp/passenger/units/ticket/c;",
        "Lcab/snapp/passenger/units/ticket/TicketView;",
        "Lcab/snapp/passenger/units/ticket/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_TICKET_ITEM:Ljava/lang/String; = "Key Ticket Item"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1048
    new-instance v0, Lcab/snapp/passenger/units/ticket/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/ticket/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2042
    new-instance v0, Lcab/snapp/passenger/units/ticket/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/ticket/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/ticket/a;",
            ">;"
        }
    .end annotation

    .line 54
    const-class v0, Lcab/snapp/passenger/units/ticket/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00d8

    return v0
.end method
