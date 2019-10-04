.class public Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/PushChannelConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "we_wk_push_channel"

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->a:Ljava/lang/String;

    const-string v0, "Marketing"

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->c:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->d:I

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->e:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->f:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->g:I

    iput-boolean v1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->h:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->k:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->l:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->m:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->n:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->o:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->p:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->q:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->r:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->s:Z

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->d:I

    return p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->f:I

    return p0
.end method

.method static synthetic f(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->g:I

    return p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->j:Z

    return p0
.end method

.method static synthetic j(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->k:Z

    return p0
.end method

.method static synthetic l(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->l:Z

    return p0
.end method

.method static synthetic m(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->m:Z

    return p0
.end method

.method static synthetic n(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->n:Z

    return p0
.end method

.method static synthetic o(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->p:Z

    return p0
.end method

.method static synthetic q(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->q:Z

    return p0
.end method

.method static synthetic r(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->r:Z

    return p0
.end method

.method static synthetic s(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->s:Z

    return p0
.end method

.method static synthetic t(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->t:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/webengage/sdk/android/PushChannelConfiguration;
    .locals 2

    new-instance v0, Lcom/webengage/sdk/android/PushChannelConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/PushChannelConfiguration;-><init>(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;Lcom/webengage/sdk/android/PushChannelConfiguration$1;)V

    return-object v0
.end method

.method public setNotificationChannelDescription(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->m:Z

    return-object p0
.end method

.method public setNotificationChannelGroup(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->o:Z

    return-object p0
.end method

.method public setNotificationChannelImportance(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->n:Z

    return-object p0
.end method

.method public setNotificationChannelLightColor(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->f:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->p:Z

    return-object p0
.end method

.method public setNotificationChannelLockScreenVisibility(I)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->g:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->q:Z

    return-object p0
.end method

.method public setNotificationChannelName(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->l:Z

    return-object p0
.end method

.method public setNotificationChannelShowBadge(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->h:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->r:Z

    return-object p0
.end method

.method public setNotificationChannelSound(Ljava/lang/String;)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->i:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->s:Z

    return-object p0
.end method

.method public setNotificationChannelVibration(Z)Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->t:Z

    return-object p0
.end method
