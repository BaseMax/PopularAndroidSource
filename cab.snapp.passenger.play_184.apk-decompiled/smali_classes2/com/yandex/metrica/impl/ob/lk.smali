.class public Lcom/yandex/metrica/impl/ob/lk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ll;

.field private final b:Lcom/yandex/metrica/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/yandex/metrica/impl/ob/ll;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ll;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lm;->a(Landroid/content/Context;)Lcom/yandex/metrica/b;

    move-result-object p1

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/yandex/metrica/impl/ob/lk;-><init>(Lcom/yandex/metrica/impl/ob/ll;Lcom/yandex/metrica/b;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ll;Lcom/yandex/metrica/b;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/ll;

    .line 45
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/lk;->b:Lcom/yandex/metrica/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/ki$a$a;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lk;->b:Lcom/yandex/metrica/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/ll;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ll;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "provided_request_schedule"

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/ki$a$b;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lk;->b:Lcom/yandex/metrica/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/ll;

    .line 29
    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ll;->a(Lcom/yandex/metrica/impl/ob/ki$a$b;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "provided_request_result"

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/yandex/metrica/impl/ob/ki$a$a;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lk;->b:Lcom/yandex/metrica/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/lk;->a:Lcom/yandex/metrica/impl/ob/ll;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/ll;->a(Lcom/yandex/metrica/impl/ob/ki$a$a;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "provided_request_send"

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
