.class public Lcab/snapp/passenger/data/models/PlateNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/passenger/data/models/PlateNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private character:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "character"
    .end annotation
.end field

.field private iranId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "iran_id"
    .end annotation
.end field

.field private partA:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "part_a"
    .end annotation
.end field

.field private partB:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "part_b"
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

    .line 12
    new-instance v0, Lcab/snapp/passenger/data/models/PlateNumber$1;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/PlateNumber$1;-><init>()V

    sput-object v0, Lcab/snapp/passenger/data/models/PlateNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partA:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->character:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partB:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->iranId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getIranId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->iranId:Ljava/lang/String;

    return-object v0
.end method

.method public getPartA()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partA:Ljava/lang/String;

    return-object v0
.end method

.method public getPartB()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partB:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 91
    iget v0, p0, Lcab/snapp/passenger/data/models/PlateNumber;->type:I

    return v0
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->character:Ljava/lang/String;

    return-void
.end method

.method public setIranId(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->iranId:Ljava/lang/String;

    return-void
.end method

.method public setPartA(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partA:Ljava/lang/String;

    return-void
.end method

.method public setPartB(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partB:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlateNumber{partA=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->character:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", partB=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iranId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->iranId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data/models/PlateNumber;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 120
    iget-object p2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->character:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->partB:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->iranId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget p2, p0, Lcab/snapp/passenger/data/models/PlateNumber;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
