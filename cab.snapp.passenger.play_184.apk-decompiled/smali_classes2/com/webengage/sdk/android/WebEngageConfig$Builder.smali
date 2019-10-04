.class public Lcom/webengage/sdk/android/WebEngageConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/WebEngageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

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
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->e:Ljava/lang/String;

    const-string v1, "3.12.3"

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->f:Ljava/lang/String;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->h:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->i:Z

    const-string v1, "aws"

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->l:I

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->m:I

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->n:I

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->o:Z

    new-instance v1, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-direct {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->build()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->s:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->t:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->u:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->v:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->x:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->y:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->z:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->A:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->B:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->C:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->D:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->E:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->F:Z

    return-void
.end method

.method protected constructor <init>(Lcom/webengage/sdk/android/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/webengage/sdk/android/LocationTrackingStrategy;->ACCURACY_CITY:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->e:Ljava/lang/String;

    const-string v1, "3.12.3"

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->f:Ljava/lang/String;

    sget-object v1, Lcom/webengage/sdk/android/actions/database/ReportingStrategy;->BUFFER:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->h:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->i:Z

    const-string v1, "aws"

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->k:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->l:I

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->m:I

    iput v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->n:I

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->o:Z

    new-instance v1, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;

    invoke-direct {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->build()Lcom/webengage/sdk/android/PushChannelConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->s:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->t:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->u:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->v:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->x:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->y:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->z:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->A:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->B:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->C:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->D:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->E:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->F:Z

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/j;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "webengage_prefs.txt"

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "location_tracking_flag"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q:Z

    invoke-virtual {p1}, Lcom/webengage/sdk/android/j;->o()Lcom/webengage/sdk/android/LocationTrackingStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "location_tracking_strategy"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r:Z

    invoke-virtual {p1}, Lcom/webengage/sdk/android/j;->m()Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/j;->e(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "event_reporting_strategy"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w:Z

    return-void
.end method

.method static synthetic A(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->A:Z

    return p0
.end method

.method static synthetic B(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->B:Z

    return p0
.end method

.method static synthetic C(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->C:Z

    return p0
.end method

.method static synthetic D(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->D:Z

    return p0
.end method

.method static synthetic E(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->E:Z

    return p0
.end method

.method static synthetic F(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->F:Z

    return p0
.end method

.method static synthetic a(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/LocationTrackingStrategy;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/actions/database/ReportingStrategy;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    return-object p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->i:Z

    return p0
.end method

.method static synthetic j(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->m:I

    return p0
.end method

.method static synthetic n(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->n:I

    return p0
.end method

.method static synthetic o(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Lcom/webengage/sdk/android/PushChannelConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    return-object p0
.end method

.method static synthetic q(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q:Z

    return p0
.end method

.method static synthetic r(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r:Z

    return p0
.end method

.method static synthetic s(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->s:Z

    return p0
.end method

.method static synthetic t(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->t:Z

    return p0
.end method

.method static synthetic u(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->u:Z

    return p0
.end method

.method static synthetic v(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->v:Z

    return p0
.end method

.method static synthetic w(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w:Z

    return p0
.end method

.method static synthetic x(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->x:Z

    return p0
.end method

.method static synthetic y(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->y:Z

    return p0
.end method

.method static synthetic z(Lcom/webengage/sdk/android/WebEngageConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->z:Z

    return p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->f:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->v:Z

    return-object p0
.end method

.method protected a(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->k:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->A:Z

    return-object p0
.end method

.method protected b(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 2

    const-string v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "gce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "aws"

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->j:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->z:Z

    return-object p0
.end method

.method protected b(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->o:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->E:Z

    return-object p0
.end method

.method public build()Lcom/webengage/sdk/android/WebEngageConfig;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/WebEngageConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/WebEngageConfig;-><init>(Lcom/webengage/sdk/android/WebEngageConfig$Builder;Lcom/webengage/sdk/android/WebEngageConfig$1;)V

    return-object v0
.end method

.method public setAutoGCMRegistrationFlag(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->c:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->s:Z

    return-object p0
.end method

.method public setDebugMode(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->h:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->x:Z

    return-object p0
.end method

.method public setDefaultPushChannelConfiguration(Lcom/webengage/sdk/android/PushChannelConfiguration;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->p:Lcom/webengage/sdk/android/PushChannelConfiguration;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->F:Z

    return-object p0
.end method

.method public setEventReportingStrategy(Lcom/webengage/sdk/android/actions/database/ReportingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->g:Lcom/webengage/sdk/android/actions/database/ReportingStrategy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->w:Z

    return-object p0
.end method

.method public setEveryActivityIsScreen(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->i:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->y:Z

    return-object p0
.end method

.method public setGCMProjectNumber(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->u:Z

    return-object p0
.end method

.method public setLocationTracking(Z)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->q:Z

    return-object p0
.end method

.method public setLocationTrackingStrategy(Lcom/webengage/sdk/android/LocationTrackingStrategy;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->b:Lcom/webengage/sdk/android/LocationTrackingStrategy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->r:Z

    return-object p0
.end method

.method public setPushAccentColor(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->D:Z

    return-object p0
.end method

.method public setPushLargeIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->C:Z

    return-object p0
.end method

.method public setPushSmallIcon(I)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->l:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->B:Z

    return-object p0
.end method

.method public setWebEngageKey(Ljava/lang/String;)Lcom/webengage/sdk/android/WebEngageConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/WebEngageConfig$Builder;->t:Z

    return-object p0
.end method
