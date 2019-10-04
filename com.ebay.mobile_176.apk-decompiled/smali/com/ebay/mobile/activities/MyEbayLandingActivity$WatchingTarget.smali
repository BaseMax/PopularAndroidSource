.class public final enum Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;
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
    name = "WatchingTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;",
        ">;",
        "Lcom/ebay/mobile/activities/MyEbayLandingActivity$Target;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

.field public static final enum ACTIVE:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

.field public static final enum ENDED:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->ACTIVE:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    .line 84
    new-instance v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    const-string v1, "ENDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->ENDED:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    sget-object v1, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->ACTIVE:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->ENDED:Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->$VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;
    .locals 1

    .line 75
    const-class v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;
    .locals 1

    .line 75
    sget-object v0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->$VALUES:[Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    invoke-virtual {v0}, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;

    return-object v0
.end method


# virtual methods
.method public getTargetList()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/ebay/mobile/activities/MyEbayLandingActivity$WatchingTarget;->value:I

    return v0
.end method
