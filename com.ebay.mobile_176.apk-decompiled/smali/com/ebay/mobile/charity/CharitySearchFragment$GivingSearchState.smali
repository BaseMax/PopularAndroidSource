.class public Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;
.super Ljava/lang/Object;
.source "CharitySearchFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/charity/CharitySearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GivingSearchState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public results:Lcom/ebay/common/net/api/finding/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/net/api/finding/PagedList<",
            "Lcom/ebay/nautilus/domain/data/Nonprofit;",
            ">;"
        }
    .end annotation
.end field

.field public searchString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 275
    new-instance v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState$1;

    invoke-direct {v0}, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    .line 272
    const-class v0, Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/finding/PagedList;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 299
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->searchString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingSearchState;->results:Lcom/ebay/common/net/api/finding/PagedList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
