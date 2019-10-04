.class public Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private cellphone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "cellphone"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "email"
    .end annotation
.end field

.field private emailVerified:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "email_verified"
    .end annotation
.end field

.field private fullname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "fullname"
    .end annotation
.end field

.field private hasMessage:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "has_message"
    .end annotation
.end field

.field private needFingerPrint:Z
    .annotation runtime Lcom/google/gson/a/c;
        value = "need_fingerprint"
    .end annotation
.end field

.field private photoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "photo_url"
    .end annotation
.end field

.field private profileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;
    .annotation runtime Lcom/google/gson/a/c;
        value = "meta"
    .end annotation
.end field

.field private referralCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "referral_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method


# virtual methods
.method public getCellphone()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->cellphone:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()I
    .locals 1

    .line 118
    iget v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->emailVerified:I

    return v0
.end method

.method public getFullname()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->fullname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->profileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    return-object v0
.end method

.method public getReferralCode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->referralCode:Ljava/lang/String;

    return-object v0
.end method

.method public isHasMessage()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->hasMessage:Z

    return v0
.end method

.method public isNeedFingerPrint()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->needFingerPrint:Z

    return v0
.end method

.method public setCellphone(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->cellphone:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailVerified(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->emailVerified:I

    return-void
.end method

.method public setFullname(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->fullname:Ljava/lang/String;

    return-void
.end method

.method public setHasMessage(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->hasMessage:Z

    return-void
.end method

.method public setNeedFingerPrint(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->needFingerPrint:Z

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setProfileMeta(Lcab/snapp/passenger/data/models/ProfileMeta;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->profileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    return-void
.end method

.method public setReferralCode(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->referralCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnappPassengerProfile{email=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fullname=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->fullname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cellphone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", photoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", referralCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->referralCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", hasMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->hasMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profileMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->profileMeta:Lcab/snapp/passenger/data/models/ProfileMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", needFingerPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->needFingerPrint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emailVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->emailVerified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
