.class public final Lcab/snapp/passenger/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/passenger/c/b;

.field private b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

.field private c:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/reactivex/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/a<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcab/snapp/passenger/data_access_layer/a/d;

.field private f:Lcab/snapp/passenger/f/b/b/c;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/c/b;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/passenger/f/b/b/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/f;->c:Lio/reactivex/j/b;

    .line 28
    invoke-static {}, Lio/reactivex/j/a;->create()Lio/reactivex/j/a;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    .line 37
    iput-object p3, p0, Lcab/snapp/passenger/c/f;->f:Lcab/snapp/passenger/f/b/b/c;

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/c/f;->a:Lcab/snapp/passenger/c/b;

    .line 39
    iput-object p2, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 40
    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfigObservable()Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/c/-$$Lambda$f$dFSQ-jL854fknPj1eaIG4dHdqno;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/c/-$$Lambda$f$dFSQ-jL854fknPj1eaIG4dHdqno;-><init>(Lcab/snapp/passenger/c/f;)V

    .line 41
    invoke-virtual {p1, p2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/Profile;Lcab/snapp/snappnetwork/model/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1124
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1126
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->setFullname(Ljava/lang/String;)V

    .line 1129
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getEmail()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getEmail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1131
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->setEmail(Ljava/lang/String;)V

    .line 1134
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1136
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->setCellphone(Ljava/lang/String;)V

    .line 1139
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1141
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/ProfileMeta;->setAddress(Ljava/lang/String;)V

    .line 1144
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getGender()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1146
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getGender()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/ProfileMeta;->setGender(Ljava/lang/Integer;)V

    .line 1149
    :cond_4
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1151
    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object p2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/data/models/ProfileMeta;->setBirthDate(Ljava/lang/String;)V

    .line 113
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/c/f;->c:Lio/reactivex/j/b;

    iget-object p2, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p1, p2}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/f;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    .line 45
    iget-object p1, p0, Lcab/snapp/passenger/c/f;->c:Lio/reactivex/j/b;

    iget-object v0, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {p1, v0}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->f:Lcab/snapp/passenger/f/b/b/c;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b/c;->setCreditResponse(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    invoke-virtual {v0, p1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    .line 61
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->f:Lcab/snapp/passenger/f/b/b/c;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b/b/c;->setUserProfile(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/f;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->c:Lio/reactivex/j/b;

    invoke-virtual {v0, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$NB9G0c0jIheFUZd0H3pB02SKJ4s(Lcab/snapp/passenger/c/f;Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/f;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$SqeZlw-BBKV6gKE3kB1xYKjPjWE(Lcab/snapp/passenger/c/f;Lcab/snapp/passenger/data/models/Profile;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/c/f;->a(Lcab/snapp/passenger/data/models/Profile;Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$dFSQ-jL854fknPj1eaIG4dHdqno(Lcab/snapp/passenger/c/f;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/f;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method public static synthetic lambda$eK4VYdbeYgbaszvKFLXJAATWTKE(Lcab/snapp/passenger/c/f;Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/c/f;->b(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    return-void
.end method


# virtual methods
.method public final fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->getCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/c/-$$Lambda$f$NB9G0c0jIheFUZd0H3pB02SKJ4s;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/c/-$$Lambda$f$NB9G0c0jIheFUZd0H3pB02SKJ4s;-><init>(Lcab/snapp/passenger/c/f;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final fetchAndRefreshProfile()Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getProfile()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$f$eK4VYdbeYgbaszvKFLXJAATWTKE;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/c/-$$Lambda$f$eK4VYdbeYgbaszvKFLXJAATWTKE;-><init>(Lcab/snapp/passenger/c/f;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;
    .locals 1

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    invoke-virtual {v0}, Lio/reactivex/j/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    return-object v0
.end method

.method public final getCreditObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    return-object v0
.end method

.method public final getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;
    .locals 1

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    return-object v0
.end method

.method public final getProfileObservable()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;",
            ">;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->c:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final resendRegistrationEmail()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->resendRegistrationEmail()Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcab/snapp/passenger/c/f;->b:Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    .line 183
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;-><init>()V

    const-wide/16 v1, -0x1

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setApCredit(Ljava/lang/Long;)V

    .line 185
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setSnappCredit(J)V

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setDefaultWallet(I)V

    .line 187
    iget-object v1, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    invoke-virtual {v1, v0}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveChanges(Lcab/snapp/passenger/data/models/Profile;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data/models/Profile;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->updateProfile(Lcab/snapp/passenger/data/models/Profile;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/c/-$$Lambda$f$SqeZlw-BBKV6gKE3kB1xYKjPjWE;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/c/-$$Lambda$f$SqeZlw-BBKV6gKE3kB1xYKjPjWE;-><init>(Lcab/snapp/passenger/c/f;Lcab/snapp/passenger/data/models/Profile;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/e/g;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final sendRegistrationEmail(Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->sendRegisterationEmail(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public final updateCredit(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/c/f;->d:Lio/reactivex/j/a;

    invoke-virtual {v0, p1}, Lio/reactivex/j/a;->onNext(Ljava/lang/Object;)V

    return-void
.end method
