.class public final Lc/c/a/n/y/d;
.super Ljava/lang/Object;
.source "SplashActivity.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/splash/SplashActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/splash/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/splash/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/y/d;->a:Lcom/farsitel/bazaar/ui/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/n/y/d;->a:Lcom/farsitel/bazaar/ui/splash/SplashActivity;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/splash/SplashActivity;->a(Lcom/farsitel/bazaar/ui/splash/SplashActivity;Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lc/c/a/n/y/d;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method
