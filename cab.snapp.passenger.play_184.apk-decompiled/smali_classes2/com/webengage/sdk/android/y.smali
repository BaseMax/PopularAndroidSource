.class Lcom/webengage/sdk/android/y;
.super Lcom/webengage/sdk/android/AbstractWebEngage;


# instance fields
.field private a:Lcom/webengage/sdk/android/WebEngageConfig;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/WebEngageConfig;)V
    .locals 1

    invoke-direct {p0}, Lcom/webengage/sdk/android/AbstractWebEngage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/y;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    iput-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    iput-object p1, p0, Lcom/webengage/sdk/android/y;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/webengage/sdk/android/ae;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    return-object v0
.end method

.method protected a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p1, Lcom/webengage/sdk/android/ap;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x6

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p2, Lcom/webengage/sdk/android/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 p1, 0x7

    invoke-direct {p2, p1, v0}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Landroid/location/Location;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p2, Lcom/webengage/sdk/android/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/16 p1, 0x8

    invoke-direct {p2, p1, v0}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lcom/webengage/sdk/android/q$a;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p2, Lcom/webengage/sdk/android/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/16 p1, 0xf

    invoke-direct {p2, p1, v0}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public analytics()Lcom/webengage/sdk/android/Analytics;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-static {v0}, Lcom/webengage/sdk/android/c;->a(Ljava/util/Queue;)Lcom/webengage/sdk/android/Analytics;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p1, Lcom/webengage/sdk/android/ap;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p1

    const/16 p1, 0x11

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p2, Lcom/webengage/sdk/android/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/16 p1, 0xc

    invoke-direct {p2, p1, v0}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p1, Lcom/webengage/sdk/android/ap;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0xe

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c(Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p2, Lcom/webengage/sdk/android/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/16 p1, 0xd

    invoke-direct {p2, p1, v0}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected d(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p1, Lcom/webengage/sdk/android/ap;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance p1, Lcom/webengage/sdk/android/ap;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f(Landroid/content/BroadcastReceiver;)V
    .locals 0

    return-void
.end method

.method public filterCustomEvents(Z)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getWebEngageConfig()Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->a:Lcom/webengage/sdk/android/WebEngageConfig;

    return-object v0
.end method

.method public receive(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "WebEngage"

    const-string v0, "Intent is null"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/y;->a(Landroid/content/Intent;)V

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

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/y;->receive(Landroid/content/Intent;)V

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

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/y;->receive(Landroid/os/Bundle;)V

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
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEveryActivityIsScreen(Z)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocationTracking(Z)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v2, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 p1, 0x13

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/webengage/sdk/android/y;->setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegistrationID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/webengage/sdk/android/ap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/webengage/sdk/android/ap;-><init>(I[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public user()Lcom/webengage/sdk/android/User;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/y;->b:Ljava/util/Queue;

    invoke-static {v0}, Lcom/webengage/sdk/android/aj;->a(Ljava/util/Queue;)Lcom/webengage/sdk/android/User;

    move-result-object v0

    return-object v0
.end method
