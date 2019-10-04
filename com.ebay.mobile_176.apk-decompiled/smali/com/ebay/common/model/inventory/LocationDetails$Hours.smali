.class public Lcom/ebay/common/model/inventory/LocationDetails$Hours;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "LocationDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/inventory/LocationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hours"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/LocationDetails$Hours;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public days:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/inventory/LocationDetails$Day;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/ebay/common/model/inventory/LocationDetails$Hours$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/LocationDetails$Hours$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/ebay/common/model/inventory/LocationDetails$Hours;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    sget-object v1, Lcom/ebay/common/model/inventory/LocationDetails$Day;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

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

    .line 85
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;->days:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
