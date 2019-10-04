.class public final enum Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

.field public static final enum ASAN_PARDAKHT:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

.field public static final enum SNAPP_WALLET:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    const/4 v1, 0x0

    const-string v2, "ASAN_PARDAKHT"

    invoke-direct {v0, v2, v1}, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->ASAN_PARDAKHT:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    .line 5
    new-instance v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    const/4 v2, 0x1

    const-string v3, "SNAPP_WALLET"

    invoke-direct {v0, v3, v2}, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->SNAPP_WALLET:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    .line 3
    sget-object v3, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->ASAN_PARDAKHT:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    aput-object v3, v0, v1

    sget-object v1, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->SNAPP_WALLET:Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    aput-object v1, v0, v2

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->$VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;
    .locals 1

    .line 3
    const-class v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    return-object p0
.end method

.method public static values()[Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;
    .locals 1

    .line 3
    sget-object v0, Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->$VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    invoke-virtual {v0}, [Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/passenger/data/models/charge/PaymentGatewayType;

    return-object v0
.end method
