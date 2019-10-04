.class public final enum Lcab/snapp/passenger/data/models/charge/PaymentStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/passenger/data/models/charge/PaymentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentStatus;

.field public static final enum FAILED:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

.field public static final enum PENDING:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

.field public static final enum SUCCESSFUL:Lcab/snapp/passenger/data/models/charge/PaymentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    const/4 v1, 0x0

    const-string v2, "SUCCESSFUL"

    invoke-direct {v0, v2, v1}, Lcab/snapp/passenger/data/models/charge/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->SUCCESSFUL:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    .line 5
    new-instance v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2}, Lcab/snapp/passenger/data/models/charge/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->PENDING:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    .line 6
    new-instance v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcab/snapp/passenger/data/models/charge/PaymentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->FAILED:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    .line 3
    sget-object v4, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->SUCCESSFUL:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->PENDING:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->FAILED:Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->$VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/PaymentStatus;
    .locals 1

    .line 3
    const-class v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    return-object p0
.end method

.method public static values()[Lcab/snapp/passenger/data/models/charge/PaymentStatus;
    .locals 1

    .line 3
    sget-object v0, Lcab/snapp/passenger/data/models/charge/PaymentStatus;->$VALUES:[Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    invoke-virtual {v0}, [Lcab/snapp/passenger/data/models/charge/PaymentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/passenger/data/models/charge/PaymentStatus;

    return-object v0
.end method
