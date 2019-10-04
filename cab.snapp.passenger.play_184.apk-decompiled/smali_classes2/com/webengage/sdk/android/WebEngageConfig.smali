.class public Lcom/webengage/sdk/android/WebEngageConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private a:Z

.field private b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/webengage/sdk/android/PushChannelConfiguration;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->a:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->c(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->c:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->d(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->e(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->f(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->f:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->h(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->h:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->i(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->i:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->k(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->k:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->l(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->l:I

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->m(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->m:I

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->n(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->n:I

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->o(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->o:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->p(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->q:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->r:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->s(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->s:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->t(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->t:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->u(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->u:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->v(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->v:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->w:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->x(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->x:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->y(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->y:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->z(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->z:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->A(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->A:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->B(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->B:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->C(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->C:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->D(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->D:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->E(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->E:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->F(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig;->F:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/WebEngageConfig$Builder;Lcom/webengage/sdk/android/WebEngageConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/WebEngageConfig;-><init>(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->q:Z

    return v0
.end method

.method protected b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->r:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->s:Z

    return v0
.end method

.method protected d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->t:Z

    return v0
.end method

.method protected e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->u:Z

    return v0
.end method

.method protected f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->v:Z

    return v0
.end method

.method protected g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->w:Z

    return v0
.end method

.method public getAccentColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->n:I

    return v0
.end method

.method public getAlternateInterfaceIdFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->k:Z

    return v0
.end method

.method public getAutoGCMRegistrationFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->c:Z

    return v0
.end method

.method public getCurrentState()Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    invoke-direct {v0}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTracking(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAutoGCMRegistrationFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setAutoGCMRegistrationFlag(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setWebEngageKey(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_3
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setGCMProjectNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_4
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_5
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_6
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDebugMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDebugMode(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEveryActivityIsScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setEveryActivityIsScreen(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_8
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_9
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_a
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushSmallIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushSmallIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_b
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushLargeIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushLargeIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_c
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->n()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setPushAccentColor(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_d
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->o()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getFilterCustomEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_e
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->p()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->setDefaultPushChannelConfiguration(Lcom/webengage/sdk/android/PushChannelConfiguration;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;

    :cond_f
    return-object v0
.end method

.method public getDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->h:Z

    return v0
.end method

.method public getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->f:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    return-object v0
.end method

.method public getEveryActivityIsScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->i:Z

    return v0
.end method

.method public getFilterCustomEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->o:Z

    return v0
.end method

.method public getGcmProjectNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationTrackingFlag()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->a:Z

    return v0
.end method

.method public getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    return-object v0
.end method

.method public getPushLargeIcon()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->m:I

    return v0
.end method

.method public getPushSmallIcon()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->l:I

    return v0
.end method

.method public getWebEngageKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getWebEngageVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->x:Z

    return v0
.end method

.method protected i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->y:Z

    return v0
.end method

.method public isLocationTrackingEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v0

    sget-object v1, Lcom/webengage/sdk/android/LocationTrackingStrategy;->DISABLED:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result v0

    return v0
.end method

.method public isValid(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WebEngage"

    if-eqz v1, :cond_0

    const-string p1, "WebEngage key not found"

    :goto_0
    invoke-static {v2, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAutoGCMRegistrationFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "GCM project number not found"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gce"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v3, "aws"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v3, "in"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Invalid value for Environment provided"

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isValid(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Invalid Push channel configuration found"

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method

.method protected j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->z:Z

    return v0
.end method

.method protected k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->A:Z

    return v0
.end method

.method protected l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->B:Z

    return v0
.end method

.method protected m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->C:Z

    return v0
.end method

.method protected n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->D:Z

    return v0
.end method

.method protected o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->E:Z

    return v0
.end method

.method protected p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig;->F:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationTracking: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nLocationTrackingStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getLocationTrackingStrategy()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nAutoGCMRegistration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAutoGCMRegistrationFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nWebEngageKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nGCMProjectNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getGcmProjectNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nWebEngageVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getWebEngageVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nReportingStrategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEventReportingStrategy()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nDebugMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDebugMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nEveryActivityIsScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEveryActivityIsScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nEnvironment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nAlternateInterfaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAlternateInterfaceIdFlag()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nPushSmallIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushSmallIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nPushLargeIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getPushLargeIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAccentColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getAccentColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nFilterCustomEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getFilterCustomEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nDefaultPushChannelConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/WebEngageConfig;->getDefaultPushChannelConfiguration()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
