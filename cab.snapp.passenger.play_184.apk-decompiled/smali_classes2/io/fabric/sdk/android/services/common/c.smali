.class final Lio/fabric/sdk/android/services/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/c;->a:Landroid/content/Context;

    .line 37
    new-instance v0, Lio/fabric/sdk/android/services/c/d;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/c;->b:Lio/fabric/sdk/android/services/c/c;

    return-void
.end method

.method private static b(Lio/fabric/sdk/android/services/common/b;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 111
    iget-object p0, p0, Lio/fabric/sdk/android/services/common/b;->advertisingId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()Lio/fabric/sdk/android/services/common/b;
    .locals 4

    .line 117
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->getReflectionStrategy()Lio/fabric/sdk/android/services/common/f;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/f;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v1

    const-string v2, "Fabric"

    if-nez v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->getServiceStrategy()Lio/fabric/sdk/android/services/common/f;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/f;->getAdvertisingInfo()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "AdvertisingInfo not present"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Using AdvertisingInfo from Service Provider"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v3, "Using AdvertisingInfo from Reflection Provider"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method final a(Lio/fabric/sdk/android/services/common/b;)V
    .locals 5

    .line 82
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v0

    const-string v1, "limit_ad_tracking_enabled"

    const-string v2, "advertising_id"

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/c;->b:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p1, Lio/fabric/sdk/android/services/common/b;->advertisingId:Ljava/lang/String;

    .line 84
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-boolean p1, p1, Lio/fabric/sdk/android/services/common/b;->limitAdTrackingEnabled:Z

    .line 85
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 83
    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/c;->b:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {p1}, Lio/fabric/sdk/android/services/c/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    invoke-interface {p1, v0}, Lio/fabric/sdk/android/services/c/c;->save(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method public final getAdvertisingInfo()Lio/fabric/sdk/android/services/common/b;
    .locals 4

    .line 1097
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/c;->b:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->b:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/c;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1099
    new-instance v2, Lio/fabric/sdk/android/services/common/b;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/common/b;-><init>(Ljava/lang/String;Z)V

    .line 51
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/c;->b(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v3, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/fabric/sdk/android/services/common/c$1;

    invoke-direct {v1, p0, v2}, Lio/fabric/sdk/android/services/common/c$1;-><init>(Lio/fabric/sdk/android/services/common/c;Lio/fabric/sdk/android/services/common/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2077
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/c;->a()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/common/c;->a(Lio/fabric/sdk/android/services/common/b;)V

    return-object v0
.end method

.method public final getReflectionStrategy()Lio/fabric/sdk/android/services/common/f;
    .locals 2

    .line 103
    new-instance v0, Lio/fabric/sdk/android/services/common/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final getServiceStrategy()Lio/fabric/sdk/android/services/common/f;
    .locals 2

    .line 107
    new-instance v0, Lio/fabric/sdk/android/services/common/e;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
