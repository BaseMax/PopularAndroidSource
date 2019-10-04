.class public final enum Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;
.super Ljava/lang/Enum;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdRequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

.field public static final enum NONE:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

.field public static final enum PLA:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->NONE:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    .line 74
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    const-string v1, "PLA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->PLA:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    sget-object v1, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->NONE:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->PLA:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->$VALUES:[Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;
    .locals 1

    .line 71
    const-class v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;
    .locals 1

    .line 71
    sget-object v0, Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->$VALUES:[Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    invoke-virtual {v0}, [Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    return-object v0
.end method
