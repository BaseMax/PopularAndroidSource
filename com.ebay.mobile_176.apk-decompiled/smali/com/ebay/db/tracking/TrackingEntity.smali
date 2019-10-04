.class public final Lcom/ebay/db/tracking/TrackingEntity;
.super Ljava/lang/Object;
.source "TrackingEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/db/tracking/TrackingEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private createdTime:J

.field private dirty:Z

.field private flagBitPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flagName:Ljava/lang/String;

.field private forceFlush:Z

.field public id:J
    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field public properties:Landroid/os/Bundle;

.field public sessionData:Landroid/os/Bundle;

.field private sourceIdEvent:Ljava/lang/String;

.field private sourceIdLink:Ljava/lang/String;

.field private sourceIdModule:Ljava/lang/String;

.field private trackingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Lcom/ebay/db/tracking/TrackingEntity$1;

    invoke-direct {v0}, Lcom/ebay/db/tracking/TrackingEntity$1;-><init>()V

    sput-object v0, Lcom/ebay/db/tracking/TrackingEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagBitPositions:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->name:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->forceFlush:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->trackingType:I

    .line 209
    const-class v0, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    .line 210
    const-class v0, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagName:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagBitPositions:Ljava/util/Set;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdEvent:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdModule:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdLink:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/ebay/db/tracking/TrackingEntity$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ebay/db/tracking/TrackingEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    return-wide v0
.end method

.method public getFlagBitPositions()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagBitPositions:Ljava/util/Set;

    return-object v0
.end method

.method public getFlagName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagName:Ljava/lang/String;

    return-object v0
.end method

.method public getForceFlush()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->forceFlush:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSessionData()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSourceIdEvent()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIdLink()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceIdModule()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdModule:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingType()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->trackingType:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->dirty:Z

    return v0
.end method

.method public setCreatedTime(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->dirty:Z

    return-void
.end method

.method public setFlagBitPositions(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagBitPositions:Ljava/util/Set;

    return-void
.end method

.method public setFlagName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 114
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagName:Ljava/lang/String;

    return-void
.end method

.method public setForceFlush(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->forceFlush:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setSourceIdEvent(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 136
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdEvent:Ljava/lang/String;

    return-void
.end method

.method public setSourceIdLink(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdLink:Ljava/lang/String;

    return-void
.end method

.method public setSourceIdModule(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdModule:Ljava/lang/String;

    return-void
.end method

.method public setTrackingType(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/ebay/db/tracking/TrackingEntity;->trackingType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-wide v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->createdTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-boolean p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->forceFlush:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->trackingType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 186
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 187
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingEntity;->flagBitPositions:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 190
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdModule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingEntity;->sourceIdLink:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
