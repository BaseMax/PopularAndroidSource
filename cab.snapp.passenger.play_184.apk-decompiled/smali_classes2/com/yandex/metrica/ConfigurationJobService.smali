.class public Lcom/yandex/metrica/ConfigurationJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/es;

.field private b:Lcom/yandex/metrica/impl/ob/fc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 43
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 45
    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "[ConfigurationJobService:%s]"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/yandex/metrica/impl/ob/es;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/es;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/ConfigurationJobService;->a:Lcom/yandex/metrica/impl/ob/es;

    .line 51
    new-instance v1, Lcom/yandex/metrica/impl/ob/ey;

    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/ConfigurationJobService;->a:Lcom/yandex/metrica/impl/ob/es;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/es;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/et;

    invoke-direct {v4, v0}, Lcom/yandex/metrica/impl/ob/et;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/ey;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/yandex/metrica/impl/ob/ez;)V

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/ob/fc;

    invoke-virtual {p0}, Lcom/yandex/metrica/ConfigurationJobService;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/fc;-><init>(Lcom/yandex/metrica/impl/ob/ey;)V

    iput-object v0, p0, Lcom/yandex/metrica/ConfigurationJobService;->b:Lcom/yandex/metrica/impl/ob/fc;

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    const v2, 0x5a23e709

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/ConfigurationJobService;->a:Lcom/yandex/metrica/impl/ob/es;

    iget-object v2, p0, Lcom/yandex/metrica/ConfigurationJobService;->b:Lcom/yandex/metrica/impl/ob/fc;

    const/4 v3, 0x0

    new-instance v4, Lcom/yandex/metrica/ConfigurationJobService$1;

    invoke-direct {v4, p0, p1}, Lcom/yandex/metrica/ConfigurationJobService$1;-><init>(Lcom/yandex/metrica/ConfigurationJobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/es;->a(Lcom/yandex/metrica/impl/ob/fb;Landroid/os/Bundle;Lcom/yandex/metrica/impl/ob/fa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 78
    :catch_0
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/ConfigurationJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
