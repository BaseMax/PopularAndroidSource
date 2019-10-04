.class Lcom/ebay/db/tracking/TrackingDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/ebay/db/tracking/TrackingEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$3;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/tracking/TrackingEntity;)V
    .locals 4

    .line 126
    iget-wide v0, p2, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getForceFlush()Z

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 129
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 130
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 131
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 135
    :goto_0
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 136
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :goto_1
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdEvent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 141
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdEvent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 145
    :goto_2
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdModule()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 146
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 148
    :cond_3
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdModule()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 150
    :goto_3
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 151
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 153
    :cond_4
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getSourceIdLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0x8

    .line 155
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getCreatedTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 156
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getTrackingType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 158
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$3;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$000(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/BundleTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->fromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 160
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 162
    :cond_5
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 165
    :goto_5
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$3;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$000(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/BundleTypeConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->fromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_6

    .line 167
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 169
    :cond_6
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 172
    :goto_6
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$3;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/tracking/TrackingDao_Impl;->access$100(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/SetTypeConverter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->getFlagBitPositions()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/db/typeconverters/SetTypeConverter;->fromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_7

    .line 174
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 176
    :cond_7
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 179
    :goto_7
    invoke-virtual {p2}, Lcom/ebay/db/tracking/TrackingEntity;->isDirty()Z

    move-result v0

    const/16 v1, 0xd

    int-to-long v2, v0

    .line 180
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 181
    iget-wide v1, p2, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 118
    check-cast p2, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/db/tracking/TrackingDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/ebay/db/tracking/TrackingEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `TrackingEntity` SET `_id` = ?,`forceFlush` = ?,`name` = ?,`flagName` = ?,`sourceIdEvent` = ?,`sourceIdModule` = ?,`sourceIdLink` = ?,`createdTime` = ?,`trackingType` = ?,`properties` = ?,`sessionData` = ?,`flagBitPositions` = ?,`dirty` = ? WHERE `_id` = ?"

    return-object v0
.end method
