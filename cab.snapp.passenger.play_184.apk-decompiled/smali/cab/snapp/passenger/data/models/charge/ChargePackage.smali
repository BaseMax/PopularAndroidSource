.class public Lcab/snapp/passenger/data/models/charge/ChargePackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/charge/ChargePackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amounts:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/a/c;
        value = "amounts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private customAmountEnable:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "customAmountEnable"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private isDefault:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "isDefault"
    .end annotation
.end field

.field private maxAmount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "maxAmount"
    .end annotation
.end field

.field private minAmount:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "minAmount"
    .end annotation
.end field

.field private persianType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "displayType"
    .end annotation
.end field

.field private type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .annotation runtime Lcom/google/gson/a/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcab/snapp/passenger/data/models/charge/ChargePackage$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/charge/ChargePackage$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->id:J

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->persianType:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->values()[Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    iput-object v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->amounts:Ljava/util/ArrayList;

    .line 128
    iget-object v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->amounts:Ljava/util/ArrayList;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->customAmountEnable:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->minAmount:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->maxAmount:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcab/snapp/passenger/data/models/charge/SIMChargeType;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    .line 30
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->persianType:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->amounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->id:J

    return-wide v0
.end method

.method public getMaxAmount()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->maxAmount:J

    return-wide v0
.end method

.method public getMinAmount()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->minAmount:J

    return-wide v0
.end method

.method public getPersianType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->persianType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcab/snapp/passenger/data/models/charge/SIMChargeType;
    .locals 1

    .line 52
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-object v0
.end method

.method public isCustomAmountEnable()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->customAmountEnable:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    return v0
.end method

.method public setAmounts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->amounts:Ljava/util/ArrayList;

    return-void
.end method

.method public setCustomAmountEnable(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->customAmountEnable:Z

    return-void
.end method

.method public setDefault(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->id:J

    return-void
.end method

.method public setMaxAmount(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->maxAmount:J

    return-void
.end method

.method public setMinAmount(J)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->minAmount:J

    return-void
.end method

.method public setPersianType(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->persianType:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcab/snapp/passenger/data/models/charge/SIMChargeType;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 107
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->persianType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->type:Lcab/snapp/passenger/data/models/charge/SIMChargeType;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/SIMChargeType;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->amounts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 111
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->isDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 112
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->customAmountEnable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->minAmount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/ChargePackage;->maxAmount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
