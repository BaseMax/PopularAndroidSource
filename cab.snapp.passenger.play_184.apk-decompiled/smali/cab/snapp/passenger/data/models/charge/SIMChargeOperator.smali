.class public Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "onImage"
    .end annotation
.end field

.field private colorHexCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "color"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/a/c;
        value = "id"
    .end annotation
.end field

.field private inactiveUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "offImage"
    .end annotation
.end field

.field private isActive:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "active"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "name"
    .end annotation
.end field

.field private persianName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "displayName"
    .end annotation
.end field

.field private preNumbers:Ljava/util/List;
    .annotation runtime Lcom/google/gson/a/c;
        value = "preNumbers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->name:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->persianName:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->activeUrl:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->inactiveUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->preNumbers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    if-eqz v1, :cond_2

    .line 137
    check-cast p1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 138
    iget-wide v1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    iget-wide v3, p1, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    .line 140
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getActiveUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->activeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    const/16 v0, 0x7f

    .line 120
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public getColorHexCode()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    return-wide v0
.end method

.method public getInactiveUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->inactiveUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPersianName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->persianName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->preNumbers:Ljava/util/List;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    return v0
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    return-void
.end method

.method public setActiveUrl(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->activeUrl:Ljava/lang/String;

    return-void
.end method

.method public setColorHexCode(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    return-void
.end method

.method public setInactiveUrl(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->inactiveUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->name:Ljava/lang/String;

    return-void
.end method

.method public setPersianName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->persianName:Ljava/lang/String;

    return-void
.end method

.method public setPreNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->preNumbers:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 152
    iget-boolean p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->isActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->colorHexCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-wide v0, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 155
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->persianName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->activeUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->inactiveUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->preNumbers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
