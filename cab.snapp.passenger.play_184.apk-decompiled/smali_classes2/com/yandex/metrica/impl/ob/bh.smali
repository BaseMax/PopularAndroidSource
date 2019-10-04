.class public Lcom/yandex/metrica/impl/ob/bh;
.super Lcom/yandex/metrica/impl/ob/ay;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/hw;

.field private final b:Lcom/yandex/metrica/impl/ob/mw;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V
    .locals 2

    .line 37
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/hw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/hw;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/mw;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/mw;

    move-result-object v1

    .line 34
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/bh;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;Lcom/yandex/metrica/impl/ob/hw;Lcom/yandex/metrica/impl/ob/mw;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;Lcom/yandex/metrica/impl/ob/hw;Lcom/yandex/metrica/impl/ob/mw;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ay;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ar;)V

    .line 48
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bh;->a:Lcom/yandex/metrica/impl/ob/hw;

    .line 49
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bh;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/hw;->a(Ljava/lang/Object;)V

    .line 50
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/bh;->b:Lcom/yandex/metrica/impl/ob/mw;

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bh;->b:Lcom/yandex/metrica/impl/ob/mw;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/mw;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/ay;->a()V

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bh;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/hw;->b(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bh;->b:Lcom/yandex/metrica/impl/ob/mw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/mw;->b()V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bh;->a:Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/hw;->a(Z)V

    return-void
.end method

.method protected b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/bh;->a(Z)V

    .line 59
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->e()I

    move-result v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/s;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bh;->b()Lcom/yandex/metrica/impl/ob/ar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/ar;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bh;->b()Lcom/yandex/metrica/impl/ob/ar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/ar;->a(Lcom/yandex/metrica/impl/i;)V

    return-void
.end method
