.class public Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AP_WALLET:I = 0x5

.field public static final CASH:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ONLINE:I = 0x2

.field public static final UNDONE:I = -0x1

.field public static final USSD:I = 0x1


# instance fields
.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "title"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->title:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    .line 90
    iget v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    iget p1, p1, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 68
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    return v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 32
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget p2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
