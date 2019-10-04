.class Lcom/yandex/metrica/impl/ob/ao$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ao;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ao;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ao$a;->a:Lcom/yandex/metrica/impl/ob/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/kw;)Z
    .locals 1

    .line 74
    new-instance v0, Lcom/yandex/metrica/impl/i;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/i;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/kw;->a()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/i;->a([B)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    .line 76
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->a(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ao$a;->a:Lcom/yandex/metrica/impl/ob/ao;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ao;->a(Lcom/yandex/metrica/impl/i;)V

    const/4 p1, 0x1

    return p1
.end method
