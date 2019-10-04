.class public final Lc/c/a/n/s/e/a/g$a;
.super Ljava/lang/Object;
.source "PaymentOptionsFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/s/e/a/g;
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
    invoke-direct {p0}, Lc/c/a/n/s/e/a/g$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/s/e/a/g$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILjava/lang/Object;)Lb/w/p;
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    .line 2
    invoke-virtual/range {v3 .. v13}, Lc/c/a/n/s/e/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lc/c/a/n/s/e/a/g$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;
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
    invoke-virtual/range {v1 .. v6}, Lc/c/a/n/s/e/a/g$a;->a(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/s/e/a/g$b;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/s/e/a/g$b;-><init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;
    .locals 12

    const-string v0, "dealer"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentType"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentGatewayType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gatewayCode"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/s/e/a/g$c;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lc/c/a/n/s/e/a/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-object v0
.end method

.method public final a(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;
    .locals 7

    const-string v0, "message"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/n/s/e/a/g$d;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lc/c/a/n/s/e/a/g$d;-><init>(ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
