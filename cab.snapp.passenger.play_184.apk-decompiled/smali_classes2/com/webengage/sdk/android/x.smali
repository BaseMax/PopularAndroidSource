.class Lcom/webengage/sdk/android/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/User;


# instance fields
.field a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    iput-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public deleteAttribute(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x13

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteAttributes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x14

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public loggedIn(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/x;->login(Ljava/lang/String;)V

    return-void
.end method

.method public loggedOut()V
    .locals 0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/x;->logout()V

    return-void
.end method

.method public login(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x15

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public logout()V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x16

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x11

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x19

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x10

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/Date;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0xd

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0xe

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0xf

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBirthDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-direct {v0, v1, v2}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0xa

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGender(Lcom/webengage/sdk/android/utils/Gender;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x9

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHashedEmail(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHashedPhoneNumber(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x8

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocation(DD)V
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/16 p1, 0x18

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOptIn(Lcom/webengage/sdk/android/Channel;Z)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/16 p1, 0x17

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUserProfile(Lcom/webengage/sdk/android/UserProfile;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/an;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/an;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/x;->a:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
