.class public final Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;
.super Ljava/lang/Object;
.source "EbayItemConditionHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/EbayItemConditionHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemCondition"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:Ljava/lang/String;

.field public isSelected:Z

.field public final localizedName:Ljava/lang/String;

.field public final matchCount:J

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    .line 83
    iput-boolean p4, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    .line 84
    iput-wide p5, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    check-cast p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;

    .line 136
    iget-object v2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    iget-wide v4, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    iget-boolean v3, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    iget-object v3, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    .line 140
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 105
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->localizedName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-boolean p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-wide v0, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->matchCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayItemConditionHistogram$ItemCondition;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
