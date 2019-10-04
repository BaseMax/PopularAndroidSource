.class Lcom/yandex/metrica/impl/ob/bm$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/md;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/bs;)Lcom/yandex/metrica/impl/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/bm;",
            "Lcom/yandex/metrica/impl/ob/md;",
            "Lcom/yandex/metrica/impl/ob/ls;",
            "Lcom/yandex/metrica/impl/an;",
            "Lcom/yandex/metrica/impl/ob/bs;",
            ")",
            "Lcom/yandex/metrica/impl/q<",
            "Lcom/yandex/metrica/impl/ob/bm;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/q;

    .line 43
    invoke-interface {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/md;->a(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/ls;)Lcom/yandex/metrica/impl/ob/mg;

    move-result-object p2

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/yandex/metrica/impl/q;-><init>(Lcom/yandex/metrica/impl/ob/bm;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/bs;)V

    return-object v0
.end method
