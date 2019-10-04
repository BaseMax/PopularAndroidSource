.class public final Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;
.super Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;
.source "OtherScreens.kt"


# instance fields
.field public final isSucceeded:Z

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_thank_you_page"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/farsitel/bazaar/analytics/model/where/OtherScreens;-><init>(Ljava/lang/String;Lh/f/b/f;)V

    iput-boolean p1, p0, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;->isSucceeded:Z

    iput-object p2, p0, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    iget-boolean v1, p0, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;->isSucceeded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_succeeded"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;->message:Ljava/lang/String;

    const-string v2, "message"

    invoke-static {v2, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
