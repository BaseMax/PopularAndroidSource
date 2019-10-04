.class public final Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BazaarHelper.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.app.BazaarHelper$getAdvertisingId$1$1"
    f = "BazaarHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    invoke-direct {v0, v1, p2}, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;-><init>(Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "AdvertisingIdClient.getAdvertisingIdInfo(context)"

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->label:I

    if-nez v1, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->p$:Li/a/H;

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;->this$0:Lc/c/a/b/d;

    invoke-static {v1}, Lc/c/a/b/d;->e(Lc/c/a/b/d;)Lc/c/a/e/d/u/a;

    move-result-object v1

    const-string v2, "advertisingId"

    invoke-static {p1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lc/c/a/e/d/u/a;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1$1;->this$0:Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;

    iget-object p1, p1, Lcom/farsitel/bazaar/app/BazaarHelper$getAdvertisingId$1;->this$0:Lc/c/a/b/d;

    invoke-static {p1}, Lc/c/a/b/d;->e(Lc/c/a/b/d;)Lc/c/a/e/d/u/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/c/a/e/d/u/a;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "SecurityException for getting advertising ID"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 8
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Device has not play services for getting advertising ID"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Illegal state exception in getting advertising ID"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 11
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "IOException in getting advertising ID"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
