.class public Lcom/ebay/common/model/inventory/LocationDetails;
.super Lcom/ebay/common/model/ParcelableHelper;
.source "LocationDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/inventory/LocationDetails$Interval;,
        Lcom/ebay/common/model/inventory/LocationDetails$Day;,
        Lcom/ebay/common/model/inventory/LocationDetails$Hours;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/inventory/LocationDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Lcom/ebay/common/model/inventory/LocationAddress;

.field public hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public pickupInstructions:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

.field public utcOffset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Lcom/ebay/common/model/inventory/LocationDetails$1;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/LocationDetails$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/inventory/LocationDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/ebay/common/model/ParcelableHelper;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->id:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->name:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/ebay/common/model/inventory/LocationAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/LocationAddress;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    .line 53
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationDetails;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationDetails;->readOptParcelable(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 55
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationDetails;->readOptParcelable(Landroid/os/Parcel;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    .line 56
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationDetails;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->phone:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/ebay/common/model/inventory/LocationDetails;->readOptString(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->url:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/model/inventory/LocationDetails;->utcOffset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->address:Lcom/ebay/common/model/inventory/LocationAddress;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/model/inventory/LocationAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->pickupInstructions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/common/model/inventory/LocationDetails;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->hours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-static {p1, v0, p2}, Lcom/ebay/common/model/inventory/LocationDetails;->writeOptParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 42
    iget-object v0, p0, Lcom/ebay/common/model/inventory/LocationDetails;->utcHours:Lcom/ebay/common/model/inventory/LocationDetails$Hours;

    invoke-static {p1, v0, p2}, Lcom/ebay/common/model/inventory/LocationDetails;->writeOptParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 43
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationDetails;->phone:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ebay/common/model/inventory/LocationDetails;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationDetails;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ebay/common/model/inventory/LocationDetails;->writeOptString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/ebay/common/model/inventory/LocationDetails;->utcOffset:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
