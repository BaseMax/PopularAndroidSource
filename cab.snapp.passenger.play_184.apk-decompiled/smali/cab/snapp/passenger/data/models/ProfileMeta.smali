.class public Lcab/snapp/passenger/data/models/ProfileMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_address"
    .end annotation
.end field

.field private birthDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_birthdate"
    .end annotation
.end field

.field private gender:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/a/c;
        value = "passenger_gender"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->gender:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->address:Ljava/lang/String;

    return-void
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->birthDate:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ProfileMeta;->gender:Ljava/lang/Integer;

    return-void
.end method
