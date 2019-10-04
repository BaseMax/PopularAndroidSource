.class public Lcom/yandex/metrica/impl/ob/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/el;


# instance fields
.field protected a:Lcom/yandex/metrica/impl/ob/gd;

.field private final b:Ljava/lang/String;

.field private c:Lcom/yandex/metrica/impl/ob/ne$a;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/gd;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/gd;

    .line 37
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/em;->b:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {p1}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>()V

    .line 40
    :try_start_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/gd;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/gd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {v0, p2}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 47
    :catch_0
    :cond_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ne$a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/a/c;
    :try_end_0
    .catch Lorg/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/yandex/metrica/impl/ob/em;
    .locals 0

    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_COUNTER_ID"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Z)Lcom/yandex/metrica/impl/ob/em;
    .locals 1

    .line 100
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 120
    new-instance v0, Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ne$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    .line 121
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/em;->h()V

    return-void
.end method

.method public b(J)Lcom/yandex/metrica/impl/ob/em;
    .locals 0

    .line 82
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_SLEEP_START"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_ID"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lcom/yandex/metrica/impl/ob/em;
    .locals 0

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public c()Ljava/lang/Long;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_INIT_TIME"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Lcom/yandex/metrica/impl/ob/em;
    .locals 0

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_ID"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_COUNTER_ID"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e(J)Lcom/yandex/metrica/impl/ob/em;
    .locals 0

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_INIT_TIME"

    invoke-direct {p0, p2, p1}, Lcom/yandex/metrica/impl/ob/em;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_SLEEP_START"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    const-string v1, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ne$a;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/gd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/em;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/ne$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->a:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/em;->c:Lcom/yandex/metrica/impl/ob/ne$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ne$a;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
