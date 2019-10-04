.class public Lcom/apptentive/android/sdk/storage/Person;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/DataChangedListener;
.implements Lcom/apptentive/android/sdk/storage/Saveable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private customData:Lcom/apptentive/android/sdk/storage/CustomData;

.field private email:Ljava/lang/String;

.field private facebookId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private transient listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

.field private mParticleId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transient personDataChangedListener:Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;

.field private phoneNumber:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/CustomData;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    return-void
.end method


# virtual methods
.method public clone()Lcom/apptentive/android/sdk/storage/Person;
    .locals 3

    .line 202
    new-instance v0, Lcom/apptentive/android/sdk/storage/Person;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/Person;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->id:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->email:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->name:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->facebookId:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->facebookId:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->phoneNumber:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->street:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->street:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->city:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->zip:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->zip:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->country:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->birthday:Ljava/lang/String;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->birthday:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    iget-object v2, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/storage/CustomData;->putAll(Ljava/util/Map;)V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/Person;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    iput-object v1, v0, Lcom/apptentive/android/sdk/storage/Person;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->clone()Lcom/apptentive/android/sdk/storage/Person;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->facebookId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMParticleId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->mParticleId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->personDataChangedListener:Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->personDataChangedListener:Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;->onPersonDataChanged()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    invoke-interface {v0}, Lcom/apptentive/android/sdk/storage/DataChangedListener;->onDataChanged()V

    :cond_1
    return-void
.end method

.method public onDataChanged()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->birthday:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->birthday:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->city:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->city:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->country:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->country:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setCustomData(Lcom/apptentive/android/sdk/storage/CustomData;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    .line 193
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/CustomData;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    return-void
.end method

.method public setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->listener:Lcom/apptentive/android/sdk/storage/DataChangedListener;

    .line 45
    iget-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->customData:Lcom/apptentive/android/sdk/storage/CustomData;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/storage/CustomData;->setDataChangedListener(Lcom/apptentive/android/sdk/storage/DataChangedListener;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->email:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->email:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->facebookId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->facebookId:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->id:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setMParticleId(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->mParticleId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->mParticleId:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setPersonDataChangedListener(Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->personDataChangedListener:Lcom/apptentive/android/sdk/storage/PersonDataChangedListener;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->phoneNumber:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->street:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->street:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Person;->zip:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Person;->zip:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->notifyDataChanged()V

    :cond_0
    return-void
.end method
