.class public Lcom/webengage/sdk/android/WebEngage;
.super Lcom/webengage/sdk/android/AbstractWebEngage;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/webengage/sdk/android/j;

.field private static c:Lcom/webengage/sdk/android/WebEngageConfig;

.field private static volatile d:Lcom/webengage/sdk/android/AbstractWebEngage;

.field private static e:Lcom/webengage/sdk/android/y;

.field private static final f:Ljava/lang/Object;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/webengage/sdk/android/WebEngage;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/webengage/sdk/android/WebEngage;->g:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Lcom/webengage/sdk/android/AbstractWebEngage;-><init>()V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/actions/database/DataHolder;->c(Z)V

    new-instance p1, Lcom/webengage/sdk/android/t;

    invoke-direct {p1}, Lcom/webengage/sdk/android/t;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/a/d;->a(Lcom/webengage/sdk/android/utils/a/c;)V

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/ad;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/ad;

    move-result-object p1

    new-instance v1, Lcom/webengage/sdk/android/ah;

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/ah;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/ad;->a(Lcom/webengage/sdk/android/ag;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Lcom/webengage/sdk/android/actions/database/n;)V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/actions/database/y;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/y;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Lcom/webengage/sdk/android/actions/database/n;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "|"

    if-eqz v1, :cond_0

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/database/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/actions/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/database/i;->b()I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->user()Lcom/webengage/sdk/android/User;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/ak;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/ak;->a()V

    :cond_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->a()Lcom/webengage/sdk/android/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/aa;->b()V

    :cond_4
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    sget-object p1, Lcom/webengage/sdk/android/af;->a:Lcom/webengage/sdk/android/af;

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngage;->setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V

    :cond_5
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngage;->setLocationTracking(Z)V

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_2
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngage;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V

    goto :goto_3

    :cond_8
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v2

    const-wide/32 v3, 0xa4cb80

    const-wide/32 v5, 0x36ee80

    const v7, 0x469c4000    # 20000.0f

    const/16 v8, 0x68

    invoke-virtual/range {v2 .. v8}, Lcom/webengage/sdk/android/o;->a(JJFI)V

    :goto_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/f;->f()Z

    move-result p1

    const-string v0, "WebEngage"

    if-eqz p1, :cond_9

    const-string p1, "App was crashed last time, LOL"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object p1

    const-string v2, "com.webengage.static.app_crashed"

    invoke-virtual {p1, v2}, Lcom/webengage/sdk/android/f;->g(Ljava/lang/String;)V

    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const-string v3, "app_crashed"

    invoke-static {v3, v1, v1, v1, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v1, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_9
    :try_start_0
    new-instance p1, Lcom/webengage/sdk/android/aq;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v3

    invoke-direct {p1, v1, v2, v3}, Lcom/webengage/sdk/android/aq;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;Lcom/webengage/sdk/android/f;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred during registering exception handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    :try_start_1
    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/v;->a(Lcom/webengage/sdk/android/PushChannelConfiguration;Landroid/content/Context;)V

    const-string p1, "Default push channel registered"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    const-string p1, "Not registering for default push channel"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error during channel registration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string p1, "WebEngage Successfully Initialized"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Current interface_id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Current luid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Current cuid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Current token: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Current WebEngage Configuration: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/WebEngageConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 5

    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    invoke-static {p0}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v1, "com.webengage.sdk.android.environment"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_0
    const-string v1, "com.webengage.sdk.android.alternate_interface_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_1
    const-string v1, "com.webengage.sdk.android.small_icon"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushSmallIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_2
    const-string v1, "com.webengage.sdk.android.large_icon"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushLargeIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_3
    const-string v1, "com.webengage.sdk.android.accent_color"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushAccentColor(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_4
    const/4 v1, 0x3

    const-string v2, "com.webengage.sdk.android.push.channel.name"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const-string v2, "Marketing"

    :goto_0
    const-string v3, "com.webengage.sdk.android.push.channel.importance"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_6
    new-instance v3, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-direct {v3}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelName(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelImportance(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    const-string v1, "com.webengage.sdk.android.push.channel.description"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelDescription(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_7
    const-string v1, "com.webengage.sdk.android.push.channel.group"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelGroup(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_8
    const-string v1, "com.webengage.sdk.android.push.channel.light_color"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelLightColor(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_9
    const-string v1, "com.webengage.sdk.android.push.channel.lock_screen_visibility"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelLockScreenVisibility(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_a
    const-string v1, "com.webengage.sdk.android.push.channel.show_badge"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelShowBadge(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_b
    const-string v1, "com.webengage.sdk.android.push.channel.sound"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelSound(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_c
    const-string v1, "com.webengage.sdk.android.push.channel.vibration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelVibration(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    :cond_d
    invoke-virtual {v3}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->build()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDefaultPushChannelConfiguration(Lcom/webengage/sdk/android/PushChannelConfiguration;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_e
    const-string v1, "com.webengage.sdk.android.location_tracking"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTracking(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_f
    const-string v1, "com.webengage.sdk.android.auto_gcm_registration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "com.webengage.sdk.android.auto_gcm_registration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setAutoGCMRegistrationFlag(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_10
    const-string v1, "com.webengage.sdk.android.project_number"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "com.webengage.sdk.android.project_number"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setGCMProjectNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_11
    const-string v1, "com.webengage.sdk.android.key"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "com.webengage.sdk.android.key"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setWebEngageKey(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_12
    const-string v1, "com.webengage.sdk.android.debug"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "com.webengage.sdk.android.debug"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDebugMode(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_13
    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Lcom/webengage/sdk/android/WebEngageConfig;Lcom/webengage/sdk/android/WebEngageConfig;Lcom/webengage/sdk/android/j;)Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>(Lcom/webengage/sdk/android/j;)V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTracking(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result p2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object p2

    :goto_2
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->g()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object p2

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getAutoGCMRegistrationFlag()Z

    move-result p2

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAutoGCMRegistrationFlag()Z

    move-result p2

    :goto_4
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setAutoGCMRegistrationFlag(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setWebEngageKey(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setGCMProjectNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->f()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageVersion()Ljava/lang/String;

    move-result-object p2

    :goto_7
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->h()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getDebugMode()Z

    move-result p2

    goto :goto_8

    :cond_b
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDebugMode()Z

    move-result p2

    :goto_8
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDebugMode(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->i()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getEveryActivityIsScreen()Z

    move-result p2

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEveryActivityIsScreen()Z

    move-result p2

    :goto_9
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEveryActivityIsScreen(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->j()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object p2

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object p2

    :goto_a
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->k()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result p2

    goto :goto_b

    :cond_e
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result p2

    :goto_b
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->l()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushSmallIcon()I

    move-result p2

    goto :goto_c

    :cond_f
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushSmallIcon()I

    move-result p2

    :goto_c
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushSmallIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->m()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushLargeIcon()I

    move-result p2

    goto :goto_d

    :cond_10
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushLargeIcon()I

    move-result p2

    :goto_d
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushLargeIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->n()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getAccentColor()I

    move-result p2

    goto :goto_e

    :cond_11
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAccentColor()I

    move-result p2

    :goto_e
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushAccentColor(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->o()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getFilterCustomEvents()Z

    move-result p2

    goto :goto_f

    :cond_12
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getFilterCustomEvents()Z

    move-result p2

    :goto_f
    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->p()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p1

    new-instance p2, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-direct {p2}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelNameSet()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_13
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelName(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelImportanceSet()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelImportance()I

    move-result v1

    goto :goto_11

    :cond_14
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelImportance()I

    move-result v1

    :goto_11
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelImportance(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelDescriptionSet()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_15
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelDescription()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelDescription(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelGroupSet()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_16
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelGroup(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationLightColorSet()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLightColor()I

    move-result v1

    goto :goto_14

    :cond_17
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLightColor()I

    move-result v1

    :goto_14
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelLightColor(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationLockScreenVisibilitySet()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLockScreenVisibility()I

    move-result v1

    goto :goto_15

    :cond_18
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLockScreenVisibility()I

    move-result v1

    :goto_15
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelLockScreenVisibility(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelShowBadgeSet()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelShowBadge()Z

    move-result v1

    goto :goto_16

    :cond_19
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelShowBadge()Z

    move-result v1

    :goto_16
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelShowBadge(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelSoundSet()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelSound()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_1a
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelSound()Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {p2, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelSound(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelVibrationSet()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelVibration()Z

    move-result p0

    goto :goto_18

    :cond_1b
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelVibration()Z

    move-result p0

    :goto_18
    invoke-virtual {p2, p0}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->setNotificationChannelVibration(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->build()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p0

    goto :goto_19

    :cond_1c
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object p0

    :goto_19
    invoke-virtual {v0, p0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDefaultPushChannelConfiguration(Lcom/webengage/sdk/android/PushChannelConfiguration;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p0

    return-object p0
.end method

.method public static engage(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/webengage/sdk/android/WebEngage;->engage(Landroid/content/Context;Lcom/webengage/sdk/android/WebEngageConfig;)V

    return-void
.end method

.method public static engage(Landroid/content/Context;Lcom/webengage/sdk/android/WebEngageConfig;)V
    .locals 4

    if-eqz p0, :cond_7

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    if-nez v0, :cond_6

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    sput-boolean v1, Lcom/webengage/sdk/android/WebEngage;->g:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    new-instance p0, Lcom/webengage/sdk/android/j;

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/webengage/sdk/android/j;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/webengage/sdk/android/WebEngage;->b:Lcom/webengage/sdk/android/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, -0x1

    :try_start_1
    invoke-static {p0}, Lcom/webengage/sdk/android/Logger;->setLogLevel(I)V

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/webengage/sdk/android/WebEngage;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v2

    sget-object v3, Lcom/webengage/sdk/android/WebEngage;->b:Lcom/webengage/sdk/android/j;

    invoke-static {v2, p1, v3}, Lcom/webengage/sdk/android/WebEngage;->a(Lcom/webengage/sdk/android/WebEngageConfig;Lcom/webengage/sdk/android/WebEngageConfig;Lcom/webengage/sdk/android/j;)Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p1

    sput-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig;->getDebugMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/webengage/sdk/android/Logger;->setLogLevel(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/webengage/sdk/android/Logger;->setLogLevel(I)V

    :goto_0
    const-string p0, "WebEngage"

    const-string p1, "Initializing WebEngage SDK"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngageConfig;->isValid(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/webengage/sdk/android/WebEngage;

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/WebEngage;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/webengage/sdk/android/ao;

    sget-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/ao;-><init>(Lcom/webengage/sdk/android/WebEngageConfig;)V

    sput-object p0, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    const-string p0, "WebEngage"

    const-string p1, "Invalid WebEngage config"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebEngage"

    const-string p1, "WebEngage Initialization failed"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget-object p0, Lcom/webengage/sdk/android/WebEngage;->e:Lcom/webengage/sdk/android/y;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/webengage/sdk/android/WebEngage;->e:Lcom/webengage/sdk/android/y;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/y;->a()Ljava/util/Queue;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_5

    const-string p1, "WebEngage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing tasks that have been submitted before webengage initialization, count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/ae;

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/webengage/sdk/android/ap;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/webengage/sdk/android/ap;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/ap;->a(Lcom/webengage/sdk/android/AbstractWebEngage;)V

    goto :goto_2

    :cond_3
    instance-of v1, p1, Lcom/webengage/sdk/android/g;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/webengage/sdk/android/g;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/g;->a(Lcom/webengage/sdk/android/Analytics;)V

    goto :goto_2

    :cond_4
    instance-of v1, p1, Lcom/webengage/sdk/android/an;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/webengage/sdk/android/an;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/aj;->a(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)Lcom/webengage/sdk/android/User;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/webengage/sdk/android/an;->a(Lcom/webengage/sdk/android/User;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "WebEngage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Some error occurred while executing all queued tasks: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_4
    const-string p1, "WebEngage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Some Error occurred during initialization : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WebEngage"

    const-string p1, "WebEngage Initialization Failed"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context found null while initializing WebEngage SDK"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static get()Lcom/webengage/sdk/android/AbstractWebEngage;
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/webengage/sdk/android/WebEngage;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "WebEngage"

    const-string v2, "Returning no-op implementation of WebEngage"

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v1

    sput-object v1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    :cond_0
    new-instance v1, Lcom/webengage/sdk/android/ao;

    sget-object v2, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/ao;-><init>(Lcom/webengage/sdk/android/WebEngageConfig;)V

    sput-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    monitor-exit v0

    return-object v1

    :cond_1
    const-string v1, "WebEngage"

    const-string v2, "Returning queued implementation of WebEngage"

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->e:Lcom/webengage/sdk/android/y;

    if-nez v1, :cond_2

    new-instance v1, Lcom/webengage/sdk/android/y;

    new-instance v2, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/webengage/sdk/android/y;-><init>(Lcom/webengage/sdk/android/WebEngageConfig;)V

    sput-object v1, Lcom/webengage/sdk/android/WebEngage;->e:Lcom/webengage/sdk/android/y;

    :cond_2
    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->e:Lcom/webengage/sdk/android/y;

    monitor-exit v0

    return-object v1

    :cond_3
    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static isEngaged()Z
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/webengage/sdk/android/WebEngage;->g:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->d:Lcom/webengage/sdk/android/AbstractWebEngage;

    instance-of v1, v1, Lcom/webengage/sdk/android/WebEngage;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static registerCustomPushRenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRender;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/CustomPushRender;)V

    return-void
.end method

.method public static registerCustomPushRerenderCallback(Lcom/webengage/sdk/android/callbacks/CustomPushRerender;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/CustomPushRerender;)V

    return-void
.end method

.method public static registerInAppNotificationCallback(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V

    return-void
.end method

.method public static registerLifeCycleCallback(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V

    return-void
.end method

.method public static registerPushNotificationCallback(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V

    return-void
.end method

.method public static registerStateChangeCallback(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;)V
    .locals 2

    invoke-static {}, Lcom/webengage/sdk/android/WebEngage;->isEngaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;Lcom/webengage/sdk/android/Analytics;Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;Lcom/webengage/sdk/android/Analytics;Landroid/content/Context;)V

    return-void
.end method

.method public static startService(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0, p2}, Lcom/webengage/sdk/android/au;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "WebEngage"

    const-string p1, "Invalid Parameters to start a service"

    invoke-static {p0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterInAppNotificationCallback(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->b(Lcom/webengage/sdk/android/callbacks/InAppNotificationCallbacks;)V

    return-void
.end method

.method public static unregisterLifeCycleCallback(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->b(Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;)V

    return-void
.end method

.method public static unregisterPushNotificationCallback(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->b(Lcom/webengage/sdk/android/callbacks/PushNotificationCallbacks;)V

    return-void
.end method

.method public static unregisterStateChangeCallback(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/webengage/sdk/android/i;->a(Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/BroadcastReceiver;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const-class v2, Lcom/webengage/sdk/android/ExecutorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_name"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/af;->c:Lcom/webengage/sdk/android/af;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method protected a(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "event"

    const-string v4, "dismiss_flag"

    const-string v5, "hashed_notification_id"

    const-string v6, "WebEngage"

    const-string v7, "notification_main_intent"

    const-string v8, "id"

    if-eqz v1, :cond_f

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_e

    :try_start_1
    new-instance v0, Lorg/a/c;

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v11

    invoke-virtual {v11}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v11

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/webengage/sdk/android/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/a/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/webengage/sdk/android/actions/render/PushNotificationData;

    sget-object v12, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-direct {v11, v0, v12}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;-><init>(Lorg/a/c;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/a/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v11, "Exception while getting push notification data from sharedprefs"

    invoke-static {v6, v11, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/webengage/sdk/android/Analytics;->b(Ljava/lang/Object;)V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v9, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v12, "amplified"

    const-string v13, "experiment_id"

    const-string v14, "call_to_action"

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v9, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v10, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v10, -0x1

    invoke-virtual {v9, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "push_notification_click"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "event_data"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v4

    if-eqz v11, :cond_3

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isAmplified()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v8

    sget-object v10, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v3, v4, v5, v10}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    const/4 v3, 0x0

    if-eqz v11, :cond_8

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    sget-object v4, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {v0, v4, v11}, Lcom/webengage/sdk/android/i;->onPushNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "push_notification_rating_submitted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getRatingV1()Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;

    move-result-object v0

    const-string v5, "we_wk_rating"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData$RatingV1;->setRateValue(I)V

    :cond_5
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    sget-object v4, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v11, v5}, Lcom/webengage/sdk/android/i;->onPushNotificationActionClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    invoke-static {}, Lcom/webengage/sdk/android/utils/h;->i()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCustomData()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v11, v4}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getCallToActionById(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/CallToAction;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/webengage/sdk/android/actions/render/CallToAction;->getAction()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :goto_2
    const-string v4, "com.webengage.cordova.WebEngagePlugin"

    const-string v7, "handlePushClick"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    const-class v10, Landroid/os/Bundle;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v16, v8, v3

    aput-object v5, v8, v11

    invoke-static {v4, v7, v9, v8}, Lcom/webengage/sdk/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    sget-object v0, Lcom/webengage/sdk/android/af;->f:Lcom/webengage/sdk/android/af;

    sget-object v3, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void

    :cond_b
    if-eqz v11, :cond_d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Lcom/webengage/sdk/android/actions/render/PushNotificationData;->isAmplified()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v2

    const-string v3, "push_notification_close"

    sget-object v4, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v3, v0, v1, v5, v4}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/webengage/sdk/android/Analytics;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v11}, Lcom/webengage/sdk/android/i;->onPushNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/PushNotificationData;)V

    :cond_d
    return-void

    :cond_e
    sget-object v0, Lcom/webengage/sdk/android/af;->f:Lcom/webengage/sdk/android/af;

    sget-object v3, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, v3}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "Exception while handling notification click/close"

    invoke-static {v6, v1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_4
    return-void
.end method

.method protected a(Landroid/location/Location;Landroid/content/BroadcastReceiver;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "user_update_geo_info"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected a(Lcom/webengage/sdk/android/q$a;Landroid/content/BroadcastReceiver;)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/webengage/sdk/android/q$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geofence_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/q$a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "transition_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/q$a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/q$a;->b()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/q$a;->b()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "geofence_transition"

    invoke-static {v3, v0, v2, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public analytics()Lcom/webengage/sdk/android/Analytics;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/c;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/BroadcastReceiver;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->n:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "extra_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/webengage/sdk/android/utils/k;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v1, p1

    move-object v5, v1

    :goto_0
    sget-object v2, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    sget-object v3, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const-string v4, "we_wk_push_notification_rerender"

    invoke-static {v4, v5, v1, p1, v3}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v2, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected b(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 4

    const-string v0, "delay_value"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "we_wk_session_delay"

    invoke-static {v3, v2, p1, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected c(Landroid/content/BroadcastReceiver;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->d:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected c(Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "we_wk_leave_intent"

    invoke-static {v3, v2, p1, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method protected c(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 4

    const-string v0, "delay_value"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/webengage/sdk/android/af;->h:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "we_wk_page_delay"

    invoke-static {v3, v2, p1, v2, v1}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p1

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected d(Landroid/content/BroadcastReceiver;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->l:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected e(Landroid/content/BroadcastReceiver;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->m:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected f(Landroid/content/BroadcastReceiver;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->o:Lcom/webengage/sdk/android/af;

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public filterCustomEvents(Z)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p1

    sput-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    return-void
.end method

.method public getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    return-object v0
.end method

.method public receive(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Push intent is null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngage;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public receive(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Push bundle is null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/WebEngage;->receive(Landroid/content/Intent;)V

    return-void
.end method

.method public receive(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Push data is null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/WebEngage;->receive(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public ruleExecutor()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/h;->a()Lcom/webengage/sdk/android/actions/rules/RuleExecutor;

    move-result-object v0

    return-object v0
.end method

.method public setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Reporting Strategy is null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    sput-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->b:Lcom/webengage/sdk/android/j;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/j;->a(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)V

    return-void
.end method

.method public setEveryActivityIsScreen(Z)V
    .locals 1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEveryActivityIsScreen(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object p1

    sput-object p1, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    return-void
.end method

.method public setLocationTracking(Z)V
    .locals 8

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTracking(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    sput-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v1

    const-wide/32 v2, 0xa4cb80

    const-wide/32 v4, 0x36ee80

    const v6, 0x469c4000    # 20000.0f

    const/16 v7, 0x68

    invoke-virtual/range {v1 .. v7}, Lcom/webengage/sdk/android/o;->a(JJFI)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/o;->a()V

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->b:Lcom/webengage/sdk/android/j;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/j;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Some error occurred during changing location tracking flag : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
    .locals 8

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    sput-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    sget-object v0, Lcom/webengage/sdk/android/WebEngage$1;->a:[I

    invoke-virtual {p1}, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/o;->a()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v1

    const-wide/32 v2, 0x2932e00

    const-wide/32 v4, 0x2932e00

    const v6, 0x47c35000    # 100000.0f

    const/16 v7, 0x68

    invoke-virtual/range {v1 .. v7}, Lcom/webengage/sdk/android/o;->a(JJFI)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v1

    const-wide/32 v2, 0xa4cb80

    const-wide/32 v4, 0x36ee80

    const v6, 0x469c4000    # 20000.0f

    const/16 v7, 0x68

    invoke-virtual/range {v1 .. v7}, Lcom/webengage/sdk/android/o;->a(JJFI)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/p;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/o;

    move-result-object v1

    const-wide/32 v2, 0xdbba0

    const-wide/32 v4, 0x493e0

    const/high16 v6, 0x447a0000    # 1000.0f

    const/16 v7, 0x64

    invoke-virtual/range {v1 .. v7}, Lcom/webengage/sdk/android/o;->a(JJFI)V

    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->b:Lcom/webengage/sdk/android/j;

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/j;->a(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Some error occurred while setting location tracking strategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/webengage/sdk/android/Logger;->setLogLevel(I)V

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/webengage/sdk/android/WebEngage;->setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/Analytics;->c()Lcom/webengage/sdk/android/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/f;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig;->getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setGCMProjectNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->build()Lcom/webengage/sdk/android/WebEngageConfig;

    move-result-object v0

    sput-object v0, Lcom/webengage/sdk/android/WebEngage;->c:Lcom/webengage/sdk/android/WebEngageConfig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gcm_regId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    const-string p1, "gcm_project_number"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    sget-object p2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "gcm_registered"

    invoke-static {v2, v1, v0, v1, p2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object p2

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "WebEngage"

    const-string p2, "Invalid GCM Parameters"

    invoke-static {p1, p2}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public user()Lcom/webengage/sdk/android/User;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/WebEngage;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngage;->analytics()Lcom/webengage/sdk/android/Analytics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/aj;->a(Landroid/content/Context;Lcom/webengage/sdk/android/Analytics;)Lcom/webengage/sdk/android/User;

    move-result-object v0

    return-object v0
.end method
