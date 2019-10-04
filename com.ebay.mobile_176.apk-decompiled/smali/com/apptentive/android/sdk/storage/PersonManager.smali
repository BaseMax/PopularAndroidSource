.class public Lcom/apptentive/android/sdk/storage/PersonManager;
.super Ljava/lang/Object;
.source "PersonManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDiffPayload(Lcom/apptentive/android/sdk/storage/Person;Lcom/apptentive/android/sdk/storage/Person;)Lcom/apptentive/android/sdk/model/PersonPayload;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lcom/apptentive/android/sdk/model/PersonPayload;

    invoke-direct {v1}, Lcom/apptentive/android/sdk/model/PersonPayload;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    if-eqz p0, :cond_3

    .line 26
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setEmail(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    if-eqz p0, :cond_5

    .line 31
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 32
    :cond_5
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setName(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_6
    if-eqz p0, :cond_7

    .line 36
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getFacebookId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getFacebookId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 37
    :cond_7
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getFacebookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setFacebookId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_8
    if-eqz p0, :cond_9

    .line 41
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 42
    :cond_9
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setPhoneNumber(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_a
    if-eqz p0, :cond_b

    .line 46
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getStreet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 47
    :cond_b
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setStreet(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_c
    if-eqz p0, :cond_d

    .line 51
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 52
    :cond_d
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setCity(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_e
    if-eqz p0, :cond_f

    .line 56
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getZip()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 57
    :cond_f
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getZip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setZip(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_10
    if-eqz p0, :cond_11

    .line 61
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 62
    :cond_11
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setCountry(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_12
    if-eqz p0, :cond_13

    .line 66
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getBirthday()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 67
    :cond_13
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setBirthday(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_14
    if-eqz p0, :cond_15

    .line 71
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v4

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 72
    :cond_15
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 73
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/storage/CustomData;->toJson()Lcom/apptentive/android/sdk/model/CustomData;

    move-result-object v2

    goto :goto_0

    :cond_16
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/model/PersonPayload;->setCustomData(Lcom/apptentive/android/sdk/model/CustomData;)V

    const/4 v2, 0x1

    :cond_17
    if-eqz p0, :cond_18

    .line 77
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Person;->getMParticleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getMParticleId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/apptentive/android/sdk/storage/PersonManager;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    .line 78
    :cond_18
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getMParticleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/apptentive/android/sdk/model/PersonPayload;->setMParticleId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_19
    if-eqz v2, :cond_1a

    move-object v0, v1

    :cond_1a
    return-object v0
.end method
