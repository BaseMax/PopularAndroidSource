.class public Lcom/yandex/metrica/impl/ob/cg;
.super Lcom/yandex/metrica/impl/ob/cb;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/bs;

.field private final b:Lcom/yandex/metrica/impl/ob/hw;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;Lcom/yandex/metrica/impl/bs;Lcom/yandex/metrica/impl/ob/hw;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cb;-><init>(Lcom/yandex/metrica/impl/ob/x;)V

    .line 32
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/bs;

    .line 33
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/cg;->b:Lcom/yandex/metrica/impl/ob/hw;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)Z
    .locals 1

    .line 39
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/bd;->b()Lcom/yandex/metrica/impl/ob/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/x;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/cg;->a:Lcom/yandex/metrica/impl/bs;

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->o()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/bs;->a(Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->g()Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    .line 41
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/nt;->a(Ljava/lang/Boolean;Z)Z

    move-result p1

    .line 1050
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/cg;->b:Lcom/yandex/metrica/impl/ob/hw;

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/hw;->a(Z)V

    const/4 p1, 0x0

    return p1
.end method
