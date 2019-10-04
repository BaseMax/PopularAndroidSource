.class public final Lc/c/a/a/b/a/a;
.super Ljava/lang/Object;
.source "ActionLogTracker.kt"

# interfaces
.implements Lc/c/a/a/b/c;


# instance fields
.field public final a:Lc/c/a/a/b/a/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/a;)V
    .locals 1

    const-string v0, "actionLogRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/b/a/a/a;

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/a/a/a;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/a/a;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;

    iget v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;-><init>(Lc/c/a/a/b/a/a;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 6
    iget v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/a/a;

    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/b/a/a;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/b/a/a/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/ActionLogTracker$track$1;->label:I

    invoke-virtual {p2, p1, v0}, Lc/c/a/a/b/a/a/a;->a(Lc/c/a/a/a/a;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 10
    :goto_1
    check-cast p2, Lc/c/a/a/b/a/a/a/a;

    .line 11
    iget-object p1, p1, Lc/c/a/a/b/a/a;->a:Lc/c/a/a/b/a/a/a;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lc/c/a/a/b/a/b/b;->c:Lc/c/a/a/b/a/b/b;

    invoke-virtual {p1, p2}, Lc/c/a/a/b/a/b/b;->a(Lc/c/a/a/b/a/a/a/a;)V

    .line 13
    :cond_4
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3
    sget-object v1, Lc/c/a/a/b/a/b/a;->a:Lc/c/a/a/b/a/b/a;

    invoke-virtual {v1, v0}, Lc/c/a/a/b/a/b/a;->a(Landroid/app/NotificationManager;)V

    .line 4
    sget-object v1, Lc/c/a/a/b/a/b/b;->c:Lc/c/a/a/b/a/b/b;

    invoke-virtual {v1, p1, v0}, Lc/c/a/a/b/a/b/b;->a(Landroid/content/Context;Landroid/app/NotificationManager;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/c/a/a/a/a;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lc/c/a/a/b/c$a;->a(Lc/c/a/a/b/c;Lc/c/a/a/a/a;)Z

    move-result p1

    return p1
.end method
