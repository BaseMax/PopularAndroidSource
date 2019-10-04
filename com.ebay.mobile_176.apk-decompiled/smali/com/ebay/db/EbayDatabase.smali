.class public abstract Lcom/ebay/db/EbayDatabase;
.super Landroidx/room/RoomDatabase;
.source "EbayDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/ebay/db/tracking/TrackingEntity;,
        Lcom/ebay/db/search/RecentSearchEntity;,
        Lcom/ebay/db/testing/NPlusOneEntity;,
        Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;,
        Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;
    }
    version = 0x7ae04
.end annotation

.annotation build Landroidx/room/TypeConverters;
    value = {
        Lcom/ebay/db/typeconverters/BundleTypeConverter;,
        Lcom/ebay/db/typeconverters/SetTypeConverter;,
        Lcom/ebay/db/typeconverters/DateTypeConverter;,
        Lcom/ebay/db/foundations/dcs/DcsTypeConverters;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "nautilus_db"

.field public static final VERSION:I = 0x7ae04


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x21

    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1, v2}, Lcom/ebay/db/EbayDatabase;->getVersion(III)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getVersion(III)I
    .locals 2

    const v0, 0x186a0

    mul-int v0, v0, p0

    mul-int/lit8 v1, p1, 0x64

    add-int/2addr v0, v1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    :goto_0
    mul-int p2, p2, p0

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public abstract dcsDao()Lcom/ebay/db/foundations/dcs/DcsDao;
.end method

.method public abstract nPlusOneDao()Lcom/ebay/db/testing/NPlusOneDao;
.end method

.method public abstract optInExperimentsDao()Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;
.end method

.method public abstract recentSearchesDao()Lcom/ebay/db/search/RecentSearchesDao;
.end method

.method public abstract trackingDao()Lcom/ebay/db/tracking/TrackingDao;
.end method
