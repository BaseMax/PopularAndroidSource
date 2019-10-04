.class public final enum Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
.super Ljava/lang/Enum;
.source "EbayErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

.field public static final enum DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

.field public static final enum Handled:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

.field public static final enum Ignored:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 393
    new-instance v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    const-string v1, "DefaultHandling"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    .line 395
    new-instance v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    const-string v1, "Handled"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->Handled:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    .line 397
    new-instance v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    const-string v1, "Ignored"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->Ignored:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    const/4 v0, 0x3

    .line 390
    new-array v0, v0, [Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    sget-object v1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->DefaultHandling:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->Handled:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->Ignored:Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->$VALUES:[Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
    .locals 1

    .line 390
    const-class v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;
    .locals 1

    .line 390
    sget-object v0, Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->$VALUES:[Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    invoke-virtual {v0}, [Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/view/EbayErrorHandler$OverrideHandler$HandleState;

    return-object v0
.end method
