.class public abstract Lcom/ebay/common/model/ParcelableHelper;
.super Ljava/lang/Object;
.source "ParcelableHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static readBoolean(Landroid/os/Parcel;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static readOptBoolean(Landroid/os/Parcel;)Ljava/lang/Boolean;
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptDate(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4

    .line 25
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 27
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptDouble(Landroid/os/Parcel;)Ljava/lang/Double;
    .locals 2

    .line 115
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptFloat(Landroid/os/Parcel;)Ljava/lang/Float;
    .locals 1

    .line 147
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptInt(Landroid/os/Parcel;)Ljava/lang/Integer;
    .locals 1

    .line 83
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptLong(Landroid/os/Parcel;)Ljava/lang/Long;
    .locals 2

    .line 99
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptParcelable(Landroid/os/Parcel;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-class v0, Lcom/ebay/common/model/ParcelableHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static readOptString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1

    .line 67
    invoke-static {p0}, Lcom/ebay/common/model/ParcelableHelper;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 0

    int-to-byte p1, p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method protected static writeOptBoolean(Landroid/os/Parcel;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    :cond_1
    return-void
.end method

.method protected static writeOptDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 20
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method protected static writeOptDouble(Landroid/os/Parcel;Ljava/lang/Double;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    return-void
.end method

.method protected static writeOptFloat(Landroid/os/Parcel;Ljava/lang/Float;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_1
    return-void
.end method

.method protected static writeOptInt(Landroid/os/Parcel;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method

.method protected static writeOptLong(Landroid/os/Parcel;Ljava/lang/Long;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_1
    return-void
.end method

.method protected static writeOptParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    return-void
.end method

.method protected static writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-static {p0, v0}, Lcom/ebay/common/model/ParcelableHelper;->writeBoolean(Landroid/os/Parcel;Z)V

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
