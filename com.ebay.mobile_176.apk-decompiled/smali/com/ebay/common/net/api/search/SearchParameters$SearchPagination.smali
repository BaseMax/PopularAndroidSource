.class public Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;
.super Ljava/lang/Object;
.source "SearchParameters.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/search/SearchParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchPagination"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dynamicPaginationEnabled:Z

.field public loadMoreOffset:I

.field public page1Size:I

.field public page2Size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1271
    new-instance v0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1257
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    .line 1258
    iput p1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    .line 1259
    iput p2, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    .line 1260
    iput p3, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;
    .locals 2

    .line 1306
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1311
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1231
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->clone()Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1320
    :cond_0
    instance-of v1, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    if-eqz v1, :cond_2

    .line 1322
    check-cast p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;

    .line 1323
    iget-boolean v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    iget-boolean v2, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    iget v2, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    iget p1, p1, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1334
    iget-boolean v0, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1335
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1336
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1337
    iget v1, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1295
    iget-boolean p2, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->dynamicPaginationEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1296
    iget p2, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page1Size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1297
    iget p2, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->page2Size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget p2, p0, Lcom/ebay/common/net/api/search/SearchParameters$SearchPagination;->loadMoreOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
