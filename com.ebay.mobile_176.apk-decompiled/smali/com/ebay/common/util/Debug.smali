.class public final Lcom/ebay/common/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final logBidTracking:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field public static final logPhotoGallery:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "eBayBidTracking"

    const-string v2, "Log EWA Bid Tracking"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/Debug;->logBidTracking:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 22
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "fwLogPhotoGallery"

    const-string v2, "Log Photo Gallery performance"

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/Debug;->logPhotoGallery:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
