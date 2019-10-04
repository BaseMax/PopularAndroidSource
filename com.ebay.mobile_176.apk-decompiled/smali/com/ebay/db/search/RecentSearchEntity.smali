.class public Lcom/ebay/db/search/RecentSearchEntity;
.super Ljava/lang/Object;
.source "RecentSearchEntity.java"


# annotations
.annotation build Landroidx/room/Entity;
.end annotation


# instance fields
.field public categoryId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public isSpelledCorrectly:Z

.field public keyword:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public productPrefix:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public searchResultCount:I

.field public sellerPrefix:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public thumbnail:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        index = true
    .end annotation
.end field

.field public timestamp:Ljava/util/Date;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public uid:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        index = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 39
    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchEntity;->timestamp:Ljava/util/Date;

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/ebay/db/search/RecentSearchEntity;->searchResultCount:I

    .line 70
    iput-boolean v0, p0, Lcom/ebay/db/search/RecentSearchEntity;->isSpelledCorrectly:Z

    return-void
.end method
