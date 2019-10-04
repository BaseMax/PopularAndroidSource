.class public final Lc/c/a/n/s/b/d$a;
.super Ljava/lang/Object;
.source "GatewayPaymentFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/s/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/s/b/d$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/s/b/d$a;Ljava/lang/String;ILandroid/os/Bundle;ILjava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v5, -0x1

    goto :goto_1

    :cond_2
    move v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    .line 1
    invoke-virtual/range {v1 .. v6}, Lc/c/a/n/s/b/d$a;->a(Ljava/lang/String;ILandroid/os/Bundle;ILjava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/n/s/b/d$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v4, p3

    .line 4
    invoke-virtual/range {v1 .. v6}, Lc/c/a/n/s/b/d$a;->a(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;
    .locals 1

    const-string v0, "buyProductArgs"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/s/b/d$b;

    invoke-direct {v0, p1}, Lc/c/a/n/s/b/d$b;-><init>(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILandroid/os/Bundle;ILjava/lang/String;)Lb/w/p;
    .locals 7

    const-string v0, "url"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishRedirectUrl"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/n/s/b/d$c;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/c/a/n/s/b/d$c;-><init>(Ljava/lang/String;ILandroid/os/Bundle;ILjava/lang/String;)V

    return-object v0
.end method

.method public final a(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 7

    const-string v0, "message"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/n/s/b/d$d;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/c/a/n/s/b/d$d;-><init>(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
