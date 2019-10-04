.class public Lcom/yandex/metrica/impl/ob/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/eg$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/en;

.field private final b:Ljava/lang/Long;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/lang/Boolean;

.field private final g:Ljava/lang/Long;

.field private final h:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/eg$a;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->a(Lcom/yandex/metrica/impl/ob/eg$a;)Lcom/yandex/metrica/impl/ob/en;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Lcom/yandex/metrica/impl/ob/en;

    .line 36
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->b(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->d:Ljava/lang/Integer;

    .line 37
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->c(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->b:Ljava/lang/Long;

    .line 38
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->d(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->c:Ljava/lang/Long;

    .line 39
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->e(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->e:Ljava/lang/Long;

    .line 40
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->f(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->f:Ljava/lang/Boolean;

    .line 41
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/eg$a;->g(Lcom/yandex/metrica/impl/ob/eg$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->g:Ljava/lang/Long;

    .line 42
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/eg$a;->a:Ljava/lang/Long;

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/eg;->h:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/eg$a;B)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/eg;-><init>(Lcom/yandex/metrica/impl/ob/eg$a;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a(J)J
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Lcom/yandex/metrica/impl/ob/en;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->a:Lcom/yandex/metrica/impl/ob/en;

    return-object v0
.end method

.method public a(Z)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(J)J
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)J
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->e:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public d(J)J
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->g:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public e(J)J
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eg;->h:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
