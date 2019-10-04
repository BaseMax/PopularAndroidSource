.class public final enum Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;
.super Ljava/lang/Enum;
.source "MyEbayLandingActivity.java"

# interfaces
.implements Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/MyEbayLandingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BidsOffersTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;",
        ">;",
        "Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

.field public static final enum BIDS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

.field public static final enum LOST:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

.field public static final enum OFFERS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;


# instance fields
.field public final sidModule:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 110
    new-instance v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    const-string v1, "BIDS"

    const-string v2, "bids"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->BIDS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    .line 114
    new-instance v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    const-string v1, "OFFERS"

    const-string v2, "offers"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->OFFERS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    .line 118
    new-instance v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    const-string v1, "LOST"

    const-string v2, "lost"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->LOST:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    const/4 v0, 0x3

    .line 105
    new-array v0, v0, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    sget-object v1, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->BIDS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->OFFERS:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->LOST:Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->$VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->value:I

    .line 131
    iput-object p4, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->sidModule:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;
    .locals 1

    .line 105
    const-class v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;
    .locals 1

    .line 105
    sget-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->$VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    invoke-virtual {v0}, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;

    return-object v0
.end method


# virtual methods
.method public getTargetList()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$BidsOffersTarget;->value:I

    return v0
.end method
