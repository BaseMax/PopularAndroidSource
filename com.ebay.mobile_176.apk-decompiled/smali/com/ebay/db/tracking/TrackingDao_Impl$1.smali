.class Lcom/ebay/db/tracking/TrackingDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "TrackingDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/tracking/TrackingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/ebay/db/tracking/TrackingEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$1;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/tracking/TrackingEntity;)V
    .locals 4

    .line 50
    iget-wide v0, p2, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 52
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getForceFlush()Z

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 53
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 54
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 55
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 59
    :goto_0
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 60
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :goto_1
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdEvent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 65
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdEvent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_2
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdModule()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 70
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdModule()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :goto_3
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 75
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0x8

    .line 79
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getCreatedTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 80
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getTrackingType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 82
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$1;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$000(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/BundleTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->fromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 84
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 86
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :goto_5
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$1;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$000(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/BundleTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->fromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 91
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 93
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :goto_6
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$1;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$100(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/SetTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagBitPositions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/SetTypeConverter;->fromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_7

    .line 98
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 100
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    :goto_7
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->isDirty()Z

    move-result p2

    const/16 v0, 0xd

    int-to-long v1, p2

    .line 104
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/tracking/TrackingDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/tracking/TrackingEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `TrackingEntity`(`_id`,`forceFlush`,`name`,`flagName`,`sourceIdEvent`,`sourceIdModule`,`sourceIdLink`,`createdTime`,`trackingType`,`properties`,`sessionData`,`flagBitPositions`,`dirty`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
