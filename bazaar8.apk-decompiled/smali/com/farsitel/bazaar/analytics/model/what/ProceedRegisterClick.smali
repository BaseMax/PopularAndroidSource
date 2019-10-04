.class public final Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;
.super Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;
.source "ButtonClick.kt"


# instance fields
.field public final isValid:Z

.field public final phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "proceed"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;-><init>(Ljava/lang/String;Ljava/lang/String;Lh/f/b/f;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;->phoneNumber:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;->isValid:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/farsitel/bazaar/analytics/model/what/ButtonClick;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lkotlin/Pair;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;->phoneNumber:Ljava/lang/String;

    const-string v3, "phone_number"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-boolean v2, p0, Lcom/farsitel/bazaar/analytics/model/what/ProceedRegisterClick;->isValid:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_valid"

    invoke-static {v3, v2}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-static {v1}, Lh/a/A;->b([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
