.class public Lcab/snapp/passenger/units/support/SupportController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/support/a;",
        "Lcab/snapp/passenger/units/support/c;",
        "Lcab/snapp/passenger/units/support/SupportView;",
        "Lcab/snapp/passenger/units/support/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_RIDE_HISTORT_INFO:Ljava/lang/String; = "Key Ride History Info"

.field public static final KEY_SUPPORT_RELATION:Ljava/lang/String; = "Key Support Relation"

.field public static final KEY_SUPPORT_TYPE:Ljava/lang/String; = "Key Support Type"

.field public static final TYPE_SUPPORT_GENERAL:I = 0x1

.field public static final TYPE_SUPPORT_RIDE:I = 0x3

.field public static final TYPE_SUPPORT_TRANSACTION:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1073
    new-instance v0, Lcab/snapp/passenger/units/support/c;

    invoke-direct {v0}, Lcab/snapp/passenger/units/support/c;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2067
    new-instance v0, Lcab/snapp/passenger/units/support/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/support/d;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/support/a;",
            ">;"
        }
    .end annotation

    .line 79
    const-class v0, Lcab/snapp/passenger/units/support/a;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00d7

    return v0
.end method

.method public handleBack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
