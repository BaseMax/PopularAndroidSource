.class public final Lc/c/a/e/d/v/a/b;
.super Ljava/lang/Object;
.source "CancelSubscriptionRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.cancelSubscriptionRequest"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dealer"
    .end annotation
.end field

.field public final sku:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sku"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/v/a/b;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/v/a/b;->sku:Ljava/lang/String;

    return-void
.end method
