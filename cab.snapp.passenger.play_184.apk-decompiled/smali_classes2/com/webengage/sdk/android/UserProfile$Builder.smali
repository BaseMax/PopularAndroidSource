.class public Lcom/webengage/sdk/android/UserProfile$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private locationData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    iput-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->locationData:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->locationData:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/webengage/sdk/android/UserProfile$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/webengage/sdk/android/UserProfile$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->locationData:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/webengage/sdk/android/UserProfile;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/UserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/UserProfile;-><init>(Lcom/webengage/sdk/android/UserProfile$Builder;Lcom/webengage/sdk/android/UserProfile$1;)V

    return-object v0
.end method

.method public setBirthDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iget-object p2, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object p3, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {p3}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public setBirthDate(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->e:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public setCompany(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->i:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->c:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->a:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setGender(Lcom/webengage/sdk/android/utils/Gender;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->f:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/utils/Gender;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setHashedEmail(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->d:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setHashedPhoneNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->h:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->b:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLocation(DD)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->locationData:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->locationData:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "longitude"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setOptIn(Lcom/webengage/sdk/android/Channel;Z)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Channel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/UserProfile$Builder;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/UserProfile$Builder;->userData:Ljava/util/Map;

    sget-object v1, Lcom/webengage/sdk/android/am;->g:Lcom/webengage/sdk/android/am;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/am;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
