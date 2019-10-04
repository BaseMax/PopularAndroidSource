.class public abstract Lcom/webengage/sdk/android/Analytics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/Analytics$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/webengage/sdk/android/aa;
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method

.method protected abstract b()Lcom/webengage/sdk/android/z;
.end method

.method protected abstract b(Ljava/lang/Object;)V
.end method

.method protected abstract c()Lcom/webengage/sdk/android/f;
.end method

.method public abstract getActivity()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installed(Landroid/content/Intent;)V
.end method

.method public abstract screenNavigated(Ljava/lang/String;)V
.end method

.method public abstract screenNavigated(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract setScreenData(Ljava/util/Map;)V
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
.end method

.method public abstract start(Landroid/app/Activity;)V
.end method

.method public abstract stop(Landroid/app/Activity;)V
.end method

.method public abstract track(Ljava/lang/String;)V
.end method

.method public abstract track(Ljava/lang/String;Lcom/webengage/sdk/android/Analytics$Options;)V
.end method

.method public abstract track(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract track(Ljava/lang/String;Ljava/util/Map;Lcom/webengage/sdk/android/Analytics$Options;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/webengage/sdk/android/Analytics$Options;",
            ")V"
        }
    .end annotation
.end method
