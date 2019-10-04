.class public final Lio/fabric/sdk/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/a$a;,
        Lio/fabric/sdk/android/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private b:Lio/fabric/sdk/android/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/fabric/sdk/android/a;->a:Landroid/app/Application;

    .line 57
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    .line 58
    new-instance p1, Lio/fabric/sdk/android/a$a;

    iget-object v0, p0, Lio/fabric/sdk/android/a;->a:Landroid/app/Application;

    invoke-direct {p1, v0}, Lio/fabric/sdk/android/a$a;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lio/fabric/sdk/android/a;->b:Lio/fabric/sdk/android/a$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final registerCallbacks(Lio/fabric/sdk/android/a$b;)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lio/fabric/sdk/android/a;->b:Lio/fabric/sdk/android/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1100
    iget-object v2, v0, Lio/fabric/sdk/android/a$a;->b:Landroid/app/Application;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1101
    new-instance v2, Lio/fabric/sdk/android/a$a$1;

    invoke-direct {v2, v0, p1}, Lio/fabric/sdk/android/a$a$1;-><init>(Lio/fabric/sdk/android/a$a;Lio/fabric/sdk/android/a$b;)V

    .line 1140
    iget-object p1, v0, Lio/fabric/sdk/android/a$a;->b:Landroid/app/Application;

    invoke-virtual {p1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1141
    iget-object p1, v0, Lio/fabric/sdk/android/a$a;->a:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public final resetCallbacks()V
    .locals 4

    .line 76
    iget-object v0, p0, Lio/fabric/sdk/android/a;->b:Lio/fabric/sdk/android/a$a;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v1, v0, Lio/fabric/sdk/android/a$a;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2093
    iget-object v3, v0, Lio/fabric/sdk/android/a$a;->b:Landroid/app/Application;

    invoke-virtual {v3, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    return-void
.end method
