.class public final enum Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;
.super Ljava/lang/Enum;
.source "CheckoutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/CheckoutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

.field public static final enum UNKNOWN:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

.field public static final enum XONEOR_V1:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

.field public static final enum XONEOR_V2:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->UNKNOWN:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    .line 30
    new-instance v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    const-string v1, "XONEOR_V1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V1:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    .line 31
    new-instance v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    const-string v1, "XONEOR_V2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V2:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    const/4 v0, 0x3

    .line 27
    new-array v0, v0, [Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    sget-object v1, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->UNKNOWN:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V1:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->XONEOR_V2:Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->$VALUES:[Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;
    .locals 1

    .line 27
    const-class v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;
    .locals 1

    .line 27
    sget-object v0, Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->$VALUES:[Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    invoke-virtual {v0}, [Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/checkout/CheckoutIntentBuilder$CheckoutType;

    return-object v0
.end method
