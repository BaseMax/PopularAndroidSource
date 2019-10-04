.class public Lcom/ebay/common/model/search/SavedSearch;
.super Ljava/lang/Object;
.source "SavedSearch.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/SavedSearch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public newItemsOnly:Z

.field public query:Ljava/lang/String;

.field private queryParsed:Z

.field public searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

.field public since:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/ebay/common/model/search/SavedSearch$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/SavedSearch$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/SavedSearch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    .line 20
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->newItemsOnly:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/SavedSearch;->id:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/SavedSearch;->name:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->newItemsOnly:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/common/model/search/SavedSearch;->since:J

    .line 45
    const-class v0, Lcom/ebay/common/model/search/SavedSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/search/SearchParameters;

    iput-object p1, p0, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/EbayCountry;I)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    .line 20
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->newItemsOnly:Z

    .line 25
    new-instance v0, Lcom/ebay/common/net/api/search/SearchParameters;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/ebay/common/net/api/search/SearchParameters;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;II)V

    iput-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ebay/common/net/api/search/SearchParameters;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    .line 20
    iput-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->newItemsOnly:Z

    .line 30
    iput-object p2, p0, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 31
    iput-object p1, p0, Lcom/ebay/common/model/search/SavedSearch;->name:Ljava/lang/String;

    .line 32
    iget-object p1, p2, Lcom/ebay/common/net/api/search/SearchParameters;->keywords:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isQueryParsed()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    return v0
.end method

.method public setQueryParsed(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->keywords:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->queryParsed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v0, p0, Lcom/ebay/common/model/search/SavedSearch;->newItemsOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-wide v0, p0, Lcom/ebay/common/model/search/SavedSearch;->since:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lcom/ebay/common/model/search/SavedSearch;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
