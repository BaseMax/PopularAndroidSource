.class public final Lc/c/a/a/b/a/a/a;
.super Ljava/lang/Object;
.source "ActionLogRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/b/a/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/a/b/a/a/a$a;


# instance fields
.field public final b:Li/a/g/b;

.field public final c:I

.field public final d:I

.field public final e:Lc/c/a/a/b/a/a/b/g;

.field public final f:Lc/c/a/a/b/a/a/c/a;

.field public final g:Lc/c/a/e/d/a/a;

.field public final h:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/a/b/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/b/a/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/a/b/a/a/a;->a:Lc/c/a/a/b/a/a/a$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/b/a/a/b/g;Lc/c/a/a/b/a/a/c/a;Lc/c/a/e/d/a/a;Lc/c/a/e/d/b/I;)V
    .locals 1

    const-string v0, "actionLogLocalDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionLogRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedDataSource"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    iput-object p2, p0, Lc/c/a/a/b/a/a/a;->f:Lc/c/a/a/b/a/a/c/a;

    iput-object p3, p0, Lc/c/a/a/b/a/a/a;->g:Lc/c/a/e/d/a/a;

    iput-object p4, p0, Lc/c/a/a/b/a/a/a;->h:Lc/c/a/e/d/b/I;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Li/a/g/e;->a(ZILjava/lang/Object;)Li/a/g/b;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/b/a/a/a;->b:Li/a/g/b;

    const/16 p1, 0x190

    .line 3
    iput p1, p0, Lc/c/a/a/b/a/a/a;->c:I

    const p1, 0x1499700

    .line 4
    iput p1, p0, Lc/c/a/a/b/a/a/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 38
    iget-object v0, p0, Lc/c/a/a/b/a/a/a;->h:Lc/c/a/e/d/b/I;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actionsCountSendLimit"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final a(Lc/c/a/a/a/a;Lh/c/b;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/a/a;",
            "Lh/c/b<",
            "-",
            "Lc/c/a/a/b/a/a/a/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;

    iget v3, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;

    invoke-direct {v2, v1, v0}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;-><init>(Lc/c/a/a/b/a/a/a;Lh/c/b;)V

    :goto_0
    iget-object v0, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v3, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->I$0:I

    iget-object v3, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lc/c/a/a/b/a/a/a/a;

    iget-object v4, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lc/c/a/a/b/a/a/a/a;

    iget-object v5, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$2:Ljava/lang/Object;

    check-cast v5, Li/a/g/b;

    iget-object v6, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lc/c/a/a/a/a;

    iget-object v2, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lc/c/a/a/b/a/a/a;

    :try_start_0
    invoke-static {v0}, Lh/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v2

    move-object v10, v3

    move-object v0, v4

    move-object v4, v5

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v4, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$2:Ljava/lang/Object;

    check-cast v4, Li/a/g/b;

    iget-object v8, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lc/c/a/a/a/a;

    iget-object v9, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lc/c/a/a/b/a/a/a;

    invoke-static {v0}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object v0, v1, Lc/c/a/a/b/a/a/a;->b:Li/a/g/b;

    .line 4
    iput-object v1, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->label:I

    invoke-interface {v0, v7, v2}, Li/a/g/b;->a(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    return-object v3

    :cond_4
    move-object v4, v0

    move-object v9, v1

    .line 5
    :goto_1
    :try_start_1
    iget-object v0, v9, Lc/c/a/a/b/a/a/a;->g:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lc/c/a/a/a/a;->a(Ljava/lang/String;)Lc/c/a/a/b/a/a/a/a;

    move-result-object v0

    .line 6
    iget-object v10, v9, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {v10}, Lc/c/a/a/b/a/a/b/g;->d()Lc/c/a/a/b/a/a/a/a;

    move-result-object v10

    .line 7
    iget-object v11, v9, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {v11}, Lc/c/a/a/b/a/a/b/g;->b()I

    move-result v11

    .line 8
    sget-object v12, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n            |Add actionLog : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ",\n            |Oldest actionLog age : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_5

    .line 11
    invoke-virtual {v10}, Lc/c/a/a/b/a/a/a/a;->g()J

    move-result-wide v14

    invoke-static {v14, v15}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lc/c/a/c/b/f;->a(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_5
    move-object v14, v7

    :goto_2
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",\n            |ActionLogs count : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",\n        "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-static {v13, v7, v6, v7}, Lh/k/f;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    .line 14
    invoke-static/range {v12 .. v17}, Lc/c/a/c/c/a;->c(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    invoke-virtual {v9, v10}, Lc/c/a/a/b/a/a/a;->a(Lc/c/a/a/b/a/a/a/a;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 16
    invoke-virtual {v9, v11}, Lc/c/a/a/b/a/a/a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 17
    :cond_6
    iput-object v9, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$2:Ljava/lang/Object;

    iput-object v0, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->L$4:Ljava/lang/Object;

    iput v11, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->I$0:I

    iput v5, v2, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$logAction$1;->label:I

    invoke-virtual {v9, v2}, Lc/c/a/a/b/a/a/a;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v3, :cond_7

    return-object v3

    :cond_7
    :goto_3
    move-object v2, v0

    move-object v5, v4

    .line 18
    :try_start_2
    iget-object v0, v9, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {v0}, Lc/c/a/a/b/a/a/b/g;->b()I

    move-result v0

    invoke-virtual {v9, v0}, Lc/c/a/a/b/a/a/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    .line 19
    iget-object v0, v9, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {v0, v10}, Lc/c/a/a/b/a/a/b/g;->a(Lc/c/a/a/b/a/a/a/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    :cond_8
    :try_start_3
    iget-object v0, v9, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {v0, v2}, Lc/c/a/a/b/a/a/b/g;->b(Lc/c/a/a/b/a/a/a/a;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 21
    :try_start_4
    sget-object v3, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v3, v0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    :goto_4
    invoke-interface {v5, v7}, Li/a/g/b;->a(Ljava/lang/Object;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_5
    invoke-interface {v4, v7}, Li/a/g/b;->a(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;

    iget v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;-><init>(Lc/c/a/a/b/a/a/a;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/a/b/a/a/a;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/b/g;->c()Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-static {v3}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 29
    :cond_3
    iget-object v2, p0, Lc/c/a/a/b/a/a/a;->f:Lc/c/a/a/b/a/a/c/a;

    iput-object p0, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/ActionLogRepository$sendSavedActions$1;->label:I

    invoke-virtual {v2, p1, v0}, Lc/c/a/a/b/a/a/c/a;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 30
    :goto_1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 31
    instance-of v1, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    .line 32
    iget-object p1, v0, Lc/c/a/a/b/a/a/a;->e:Lc/c/a/a/b/a/a/b/g;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/b/g;->a()V

    goto :goto_2

    .line 33
    :cond_5
    instance-of v0, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz v0, :cond_6

    .line 34
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send saved action logs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_6
    const/4 v3, 0x0

    .line 35
    :goto_2
    invoke-static {v3}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lc/c/a/a/b/a/a/a;->a()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lc/c/a/a/b/a/a/a/a;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/a/a;->g()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget p1, p0, Lc/c/a/a/b/a/a/a;->d:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/a;->h:Lc/c/a/e/d/b/I;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "actionLogNotificationEnabled"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/a/b/a/a/a;->c:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
