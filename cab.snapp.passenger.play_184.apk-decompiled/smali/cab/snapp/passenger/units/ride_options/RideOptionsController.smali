.class public Lcab/snapp/passenger/units/ride_options/RideOptionsController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/ride_options/a;",
        "Lcab/snapp/passenger/units/ride_options/c;",
        "Lcab/snapp/passenger/units/ride_options/RideOptionsView;",
        "Lcab/snapp/passenger/units/ride_options/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_SERVICE_TYPE:Ljava/lang/String; = "ride option service type key"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1049
    new-instance v0, Lcab/snapp/passenger/units/ride_options/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/ride_options/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2043
    new-instance v0, Lcab/snapp/passenger/units/ride_options/e;

    invoke-direct {v0}, Lcab/snapp/passenger/units/ride_options/e;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/ride_options/a;",
            ">;"
        }
    .end annotation

    .line 55
    const-class v0, Lcab/snapp/passenger/units/ride_options/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00c5

    return v0
.end method
