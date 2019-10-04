.class public final Lcab/snapp/passenger/f/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcab/snapp/passenger/f/b/c/a<",
        "Lcab/snapp/passenger/f/b/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/f/b/c/b;)V
    .locals 1

    .line 76
    invoke-interface {p0}, Lcab/snapp/passenger/f/b/c/b;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcab/snapp/passenger/f/b/a/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/a/c;->getProperties()Lorg/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Lcab/snapp/passenger/f/b/c/b;)V
    .locals 1

    .line 67
    invoke-interface {p0}, Lcab/snapp/passenger/f/b/c/b;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcab/snapp/passenger/f/b/a/b;

    invoke-virtual {p0}, Lcab/snapp/passenger/f/b/a/b;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yandex/metrica/YandexMetrica;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$A-fWuVupkfEJ3sAVSTr7m4Z7n1w(Lcab/snapp/passenger/f/b/c/b;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/b/d/b;->b(Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method

.method public static synthetic lambda$xotPCLHl8LNgvscJChNg9GsP7qo(Lcab/snapp/passenger/f/b/c/b;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/f/b/d/b;->a(Lcab/snapp/passenger/f/b/c/b;)V

    return-void
.end method


# virtual methods
.method public final getHandlerForEvent(Lcab/snapp/passenger/f/b/c/b;)Lcab/snapp/passenger/f/b/c/c;
    .locals 2

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/f/b/d/b;->a:Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/f/b/a/b;

    if-eqz v0, :cond_2

    .line 63
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/f/b/a/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/a/b;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 67
    :cond_1
    new-instance v0, Lcab/snapp/passenger/f/b/d/-$$Lambda$b$A-fWuVupkfEJ3sAVSTr7m4Z7n1w;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/f/b/d/-$$Lambda$b$A-fWuVupkfEJ3sAVSTr7m4Z7n1w;-><init>(Lcab/snapp/passenger/f/b/c/b;)V

    return-object v0

    .line 69
    :cond_2
    instance-of v0, p1, Lcab/snapp/passenger/f/b/a/c;

    if-eqz v0, :cond_4

    .line 71
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/f/b/a/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/a/c;->getProperties()Lorg/a/c;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 76
    :cond_3
    new-instance v0, Lcab/snapp/passenger/f/b/d/-$$Lambda$b$xotPCLHl8LNgvscJChNg9GsP7qo;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/f/b/d/-$$Lambda$b$xotPCLHl8LNgvscJChNg9GsP7qo;-><init>(Lcab/snapp/passenger/f/b/c/b;)V

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final init(Landroid/app/Application;Ljava/lang/String;)Lcab/snapp/passenger/f/b/d/b;
    .locals 1

    .line 41
    iput-object p1, p0, Lcab/snapp/passenger/f/b/d/b;->a:Landroid/app/Application;

    .line 43
    invoke-static {p2}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    move-result-object p2

    .line 44
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->build()Lcom/yandex/metrica/YandexMetricaConfig;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/yandex/metrica/YandexMetrica;->activate(Landroid/content/Context;Lcom/yandex/metrica/YandexMetricaConfig;)V

    .line 46
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetrica;->enableActivityAutoTracking(Landroid/app/Application;)V

    return-object p0
.end method

.method public final sendUserProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/yandex/metrica/profile/UserProfile;->newBuilder()Lcom/yandex/metrica/profile/UserProfile$Builder;

    move-result-object v0

    invoke-static {}, Lcom/yandex/metrica/profile/Attribute;->name()Lcom/yandex/metrica/profile/NameAttribute;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/profile/NameAttribute;->withValue(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/profile/UserProfile$Builder;->apply(Lcom/yandex/metrica/profile/UserProfileUpdate;)Lcom/yandex/metrica/profile/UserProfile$Builder;

    move-result-object p1

    const-string v0, "PhoneNumber"

    .line 87
    invoke-static {v0}, Lcom/yandex/metrica/profile/Attribute;->customString(Ljava/lang/String;)Lcom/yandex/metrica/profile/StringAttribute;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yandex/metrica/profile/StringAttribute;->withValue(Ljava/lang/String;)Lcom/yandex/metrica/profile/UserProfileUpdate;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/yandex/metrica/profile/UserProfile$Builder;->apply(Lcom/yandex/metrica/profile/UserProfileUpdate;)Lcom/yandex/metrica/profile/UserProfile$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/UserProfile$Builder;->build()Lcom/yandex/metrica/profile/UserProfile;

    move-result-object p1

    .line 89
    invoke-static {p2}, Lcom/yandex/metrica/YandexMetrica;->setUserProfileID(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetrica;->reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V

    return-void
.end method
