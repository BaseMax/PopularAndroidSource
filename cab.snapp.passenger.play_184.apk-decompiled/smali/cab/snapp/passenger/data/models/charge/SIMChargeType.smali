.class public final enum Lcab/snapp/passenger/data/models/charge/SIMChargeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/passenger/data/models/charge/SIMChargeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field public static final enum CUSTOME_TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field public static final enum MAGIC:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field public static final enum PACKAGE:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field public static final enum PIN:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

.field public static final enum TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v1, 0x0

    const-string v2, "MAGIC"

    invoke-direct {v0, v2, v1}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->MAGIC:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 5
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v2, 0x1

    const-string v3, "TOPUP"

    invoke-direct {v0, v3, v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 6
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v3, 0x2

    const-string v4, "PIN"

    invoke-direct {v0, v4, v3}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->PIN:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 7
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v4, 0x3

    const-string v5, "PACKAGE"

    invoke-direct {v0, v5, v4}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->PACKAGE:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 8
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v5, 0x4

    const-string v6, "CUSTOME_TOPUP"

    invoke-direct {v0, v6, v5}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->CUSTOME_TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 3
    sget-object v6, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->MAGIC:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    aput-object v6, v0, v1

    sget-object v1, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->PIN:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->PACKAGE:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    aput-object v1, v0, v4

    sget-object v1, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->CUSTOME_TOPUP:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    aput-object v1, v0, v5

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->$VALUES:[Lcab/snapp/passenger/data/models/charge/SIMChargeType;

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

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .locals 1

    .line 3
    const-class v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-object p0
.end method

.method public static values()[Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .locals 1

    .line 3
    sget-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->$VALUES:[Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    invoke-virtual {v0}, [Lcab/snapp/passenger/data/models/charge/SIMChargeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-object v0
.end method
