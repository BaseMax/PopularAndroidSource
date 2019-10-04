.class Lcom/webengage/sdk/android/e;
.super Lcom/webengage/sdk/android/Analytics;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/Analytics;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/webengage/sdk/android/aa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected b()Lcom/webengage/sdk/android/z;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected c()Lcom/webengage/sdk/android/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public installed(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public screenNavigated(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public screenNavigated(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setScreenData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public stop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public track(Ljava/lang/String;Lcom/webengage/sdk/android/Analytics$Options;)V
    .locals 0

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;Lcom/webengage/sdk/android/Analytics$Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/webengage/sdk/android/Analytics$Options;",
            ")V"
        }
    .end annotation

    return-void
.end method
