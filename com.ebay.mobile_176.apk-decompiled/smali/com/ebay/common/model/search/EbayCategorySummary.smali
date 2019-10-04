.class public final Lcom/ebay/common/model/search/EbayCategorySummary;
.super Ljava/lang/Object;
.source "EbayCategorySummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayCategorySummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CATEGORY_ID:J = -0x2L

.field public static final EXPLICIT_ALL_CATEGORIES_ID:J


# instance fields
.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/ebay/common/model/search/EbayCategorySummary$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayCategorySummary$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayCategorySummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, v0, v1, v2}, Lcom/ebay/common/model/search/EbayCategorySummary;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    .line 24
    iput-object p3, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-wide v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    .line 36
    iget-object p1, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-wide v0, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    .line 42
    iget-object p1, p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/EbayCategory;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-wide v0, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->id:J

    iput-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    .line 30
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbayCategory;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/ebay/common/model/search/EbayCategorySummary;
    .locals 1

    .line 90
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/search/EbayCategorySummary;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/ebay/common/model/search/EbayCategorySummary;->clone()Lcom/ebay/common/model/search/EbayCategorySummary;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/model/search/EbayCategorySummary;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    iget-wide v3, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    check-cast p1, Lcom/ebay/common/model/search/EbayCategorySummary;

    iget-wide v5, p1, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 63
    iget-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    iget-wide v2, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isDefault()Z
    .locals 4

    .line 47
    iget-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategorySummary;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
