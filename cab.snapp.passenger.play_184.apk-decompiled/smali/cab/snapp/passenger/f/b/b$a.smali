.class public final Lcab/snapp/passenger/f/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/adjust/sdk/AdjustConfig;

.field c:Landroid/app/Application;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field private g:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public final getAppmetricaKey()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getLifeCycleCallback()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .line 451
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0
.end method

.method public final getWebEngageKey()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcab/snapp/passenger/f/b/b$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isInDebugMode()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->f:Z

    return v0
.end method

.method public final isSupportAppmetrica()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->i:Z

    return v0
.end method

.method public final isSupportFirebase()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->h:Z

    return v0
.end method

.method public final setLifeCycleCallback(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcab/snapp/passenger/f/b/b$a;->g:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method public final supportAppmetrica(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->i:Z

    .line 490
    iput-object p1, p0, Lcab/snapp/passenger/f/b/b$a;->e:Ljava/lang/String;

    return-void
.end method

.method public final supportFirebase()V
    .locals 1

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcab/snapp/passenger/f/b/b$a;->h:Z

    return-void
.end method
