.class public Lcom/webengage/sdk/android/PushChannelConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

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
.method private constructor <init>(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->a(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->b(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->c(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->c:I

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->d(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->e(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->e:I

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->f(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->f:I

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->g(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->g:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->h(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->i(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->i:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->j(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->k(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->k:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->l(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->l:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->m(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->m:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->n(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->n:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->o(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->o:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->p(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->p:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->q(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->q:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->r(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->r:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->s(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->s:Z

    invoke-static {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;->t(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->t:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;Lcom/webengage/sdk/android/PushChannelConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;-><init>(Lcom/webengage/sdk/android/PushChannelConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/webengage/sdk/android/PushChannelConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/webengage/sdk/android/PushChannelConfiguration;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNotificationChannelDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelImportance()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->c:I

    return v0
.end method

.method public getNotificationChannelLightColor()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->e:I

    return v0
.end method

.method public getNotificationChannelLockScreenVisibility()I
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->f:I

    return v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationChannelSound()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNotificationChannelDescriptionSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->m:Z

    return v0
.end method

.method public isNotificationChannelGroupSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->o:Z

    return v0
.end method

.method public isNotificationChannelIdSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->k:Z

    return v0
.end method

.method public isNotificationChannelImportanceSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->n:Z

    return v0
.end method

.method public isNotificationChannelNameSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->l:Z

    return v0
.end method

.method public isNotificationChannelShowBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->g:Z

    return v0
.end method

.method public isNotificationChannelShowBadgeSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->r:Z

    return v0
.end method

.method public isNotificationChannelSoundSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->s:Z

    return v0
.end method

.method public isNotificationChannelVibration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->i:Z

    return v0
.end method

.method public isNotificationChannelVibrationSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->t:Z

    return v0
.end method

.method public isNotificationLightColorSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->p:Z

    return v0
.end method

.method public isNotificationLockScreenVisibilitySet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/PushChannelConfiguration;->q:Z

    return v0
.end method

.method public isValid(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WebEngage"

    if-eqz v1, :cond_0

    const-string p1, " Notification channel cannot be null or empty"

    :goto_0
    invoke-static {v2, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/webengage/sdk/android/utils/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, " Notification channel name cannot be null or empty"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelImportance()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelImportance()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/webengage/sdk/android/v;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " Notification channel group with id: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not yet registered"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const-string p1, " Notification channel importance should be >=0 && <= 5"

    goto :goto_0

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChannelId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChannelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChannelImportance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelImportance()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nChannelDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChannelGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nChannelColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLightColor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nLockScreenVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelLockScreenVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nShowBadge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelShowBadge()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->getNotificationChannelSound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nVibration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/PushChannelConfiguration;->isNotificationChannelVibration()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
