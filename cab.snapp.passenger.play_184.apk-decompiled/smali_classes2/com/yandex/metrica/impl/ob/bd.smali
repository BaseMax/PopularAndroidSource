.class public Lcom/yandex/metrica/impl/ob/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/bb;
.implements Lcom/yandex/metrica/impl/ob/lx;


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/x;

.field private volatile b:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/x;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    .line 51
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->a()Landroid/os/ResultReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Landroid/os/ResultReceiver;

    .line 52
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/x;->a(Lcom/yandex/metrica/impl/ob/bd;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/x;->b(Lcom/yandex/metrica/impl/ob/bd;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/x;->a(Lcom/yandex/metrica/impl/ob/t;)V

    .line 59
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/t;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->a()Landroid/os/ResultReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Landroid/os/ResultReceiver;

    .line 60
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    invoke-virtual {p2, p1, p0}, Lcom/yandex/metrica/impl/ob/x;->a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/bd;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/lu;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/k;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/lu;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->b:Landroid/os/ResultReceiver;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/k;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/ma;)V

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/x;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bd;->a:Lcom/yandex/metrica/impl/ob/x;

    return-object v0
.end method
