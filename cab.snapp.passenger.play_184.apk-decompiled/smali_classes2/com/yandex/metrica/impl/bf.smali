.class Lcom/yandex/metrica/impl/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/yandex/metrica/CounterConfiguration;

.field protected b:Lcom/yandex/metrica/impl/r;

.field protected c:Lcom/yandex/metrica/impl/aw;

.field private final d:Lcom/yandex/metrica/impl/ob/u;

.field private e:Lcom/yandex/metrica/impl/u;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/u;Lcom/yandex/metrica/CounterConfiguration;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/u;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/u;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bf;->e:Lcom/yandex/metrica/impl/u;

    .line 34
    iput-object p1, p0, Lcom/yandex/metrica/impl/bf;->d:Lcom/yandex/metrica/impl/ob/u;

    .line 35
    iput-object p2, p0, Lcom/yandex/metrica/impl/bf;->a:Lcom/yandex/metrica/CounterConfiguration;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/aw;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yandex/metrica/impl/bf;->c:Lcom/yandex/metrica/impl/aw;

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/k;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->a:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/lw;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/bf;->b(Lcom/yandex/metrica/impl/ob/lw;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/oo;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/r;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/r;-><init>(Lcom/yandex/metrica/impl/ob/oo;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/bf;->b:Lcom/yandex/metrica/impl/r;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->b:Lcom/yandex/metrica/impl/r;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->e:Lcom/yandex/metrica/impl/u;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/u;->c()Z

    move-result v0

    return v0
.end method

.method b()Lcom/yandex/metrica/CounterConfiguration;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->a:Lcom/yandex/metrica/CounterConfiguration;

    return-object v0
.end method

.method b(Lcom/yandex/metrica/impl/ob/lw;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->a:Lcom/yandex/metrica/CounterConfiguration;

    invoke-interface {p1}, Lcom/yandex/metrica/impl/ob/lw;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method c()Landroid/os/Bundle;
    .locals 2

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/bf;->a:Lcom/yandex/metrica/CounterConfiguration;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/Bundle;)V

    .line 49
    iget-object v1, p0, Lcom/yandex/metrica/impl/bf;->d:Lcom/yandex/metrica/impl/ob/u;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/u;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method d()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->e:Lcom/yandex/metrica/impl/u;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/u;->b()V

    return-void
.end method

.method e()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->e:Lcom/yandex/metrica/impl/u;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/u;->a()Z

    move-result v0

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->b:Lcom/yandex/metrica/impl/r;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/yandex/metrica/impl/aw;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->c:Lcom/yandex/metrica/impl/aw;

    return-object v0
.end method

.method public h()Lcom/yandex/metrica/impl/ob/u;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/bf;->d:Lcom/yandex/metrica/impl/ob/u;

    return-object v0
.end method
