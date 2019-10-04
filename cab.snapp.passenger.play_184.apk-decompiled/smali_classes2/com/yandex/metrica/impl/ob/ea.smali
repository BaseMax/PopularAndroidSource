.class public abstract Lcom/yandex/metrica/impl/ob/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ed;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ed<",
        "Lcom/yandex/metrica/impl/ob/ef;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ac;

.field private final b:Lcom/yandex/metrica/impl/ob/gd;

.field private final c:Lcom/yandex/metrica/impl/ob/em;

.field private final d:Lcom/yandex/metrica/impl/ob/ei;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;Lcom/yandex/metrica/impl/ob/em;Lcom/yandex/metrica/impl/ob/ei;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ea;->a:Lcom/yandex/metrica/impl/ob/ac;

    .line 38
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ea;->b:Lcom/yandex/metrica/impl/ob/gd;

    .line 39
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 40
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ea;->d:Lcom/yandex/metrica/impl/ob/ei;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/metrica/impl/ob/ee;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/ob/ee;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->a:Lcom/yandex/metrica/impl/ob/ac;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ea;->b()Lcom/yandex/metrica/impl/ob/eg;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/eg;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/ee;
    .locals 13

    .line 23
    check-cast p1, Lcom/yandex/metrica/impl/ob/ef;

    .line 1054
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ea;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ac;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object v0

    const-string v1, "create session with non-empty storage"

    .line 1059
    invoke-interface {v0, v1}, Lcom/yandex/metrica/b;->reportEvent(Ljava/lang/String;)V

    .line 1061
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ee;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->a:Lcom/yandex/metrica/impl/ob/ac;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 1086
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ea;->b:Lcom/yandex/metrica/impl/ob/gd;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/gd;->f(J)J

    move-result-wide v3

    const-wide v5, 0x2540be400L

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    :goto_0
    move-wide v8, v5

    .line 1088
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ea;->b:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v3, v8, v9}, Lcom/yandex/metrica/impl/ob/gd;->g(J)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    .line 1068
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    invoke-virtual {v3, v8, v9}, Lcom/yandex/metrica/impl/ob/em;->d(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p1, Lcom/yandex/metrica/impl/ob/ef;->a:J

    .line 1069
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->b(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v3

    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/ef;->a:J

    .line 1070
    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->e(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 1071
    invoke-virtual {v3, v4, v5}, Lcom/yandex/metrica/impl/ob/em;->a(J)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v3

    const/4 v4, 0x1

    .line 1072
    invoke-virtual {v3, v4}, Lcom/yandex/metrica/impl/ob/em;->a(Z)Lcom/yandex/metrica/impl/ob/em;

    move-result-object v3

    .line 1073
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/em;->h()V

    .line 1075
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ea;->a:Lcom/yandex/metrica/impl/ob/ac;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ac;->l()Lcom/yandex/metrica/impl/ob/fo;

    move-result-object v7

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ea;->d:Lcom/yandex/metrica/impl/ob/ei;

    .line 1077
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/ei;->a()Lcom/yandex/metrica/impl/ob/en;

    move-result-object v10

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p1, Lcom/yandex/metrica/impl/ob/ef;->b:J

    .line 1078
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v11

    .line 1075
    invoke-virtual/range {v7 .. v12}, Lcom/yandex/metrica/impl/ob/fo;->a(JLcom/yandex/metrica/impl/ob/en;J)V

    .line 1082
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ea;->b()Lcom/yandex/metrica/impl/ob/eg;

    move-result-object p1

    .line 1061
    invoke-direct {v0, v1, v2, p1}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/el;Lcom/yandex/metrica/impl/ob/eg;)V

    return-object v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/eg;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ea;->d:Lcom/yandex/metrica/impl/ob/ei;

    .line 1046
    new-instance v1, Lcom/yandex/metrica/impl/ob/eg$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/eg$a;-><init>(Lcom/yandex/metrica/impl/ob/ei;B)V

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 96
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/em;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/eg$a;->a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 97
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/em;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg$a;->c(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 98
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/em;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg$a;->b(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 99
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/em;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg$a;->a(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 100
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/em;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg$a;->d(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ea;->c:Lcom/yandex/metrica/impl/ob/em;

    .line 101
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/em;->f()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/eg$a;->e(Ljava/lang/Long;)Lcom/yandex/metrica/impl/ob/eg$a;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eg$a;->a()Lcom/yandex/metrica/impl/ob/eg;

    move-result-object v0

    return-object v0
.end method
