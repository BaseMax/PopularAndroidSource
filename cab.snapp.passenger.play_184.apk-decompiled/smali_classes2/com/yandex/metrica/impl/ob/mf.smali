.class public Lcom/yandex/metrica/impl/ob/mf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/yandex/metrica/impl/ob/ai;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mg;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ls;

.field private final b:Lcom/yandex/metrica/impl/ob/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/ls;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lcom/yandex/metrica/impl/ob/ls;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/ai;

    .line 25
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mf;->a:Lcom/yandex/metrica/impl/ob/ls;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/an;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mf;->a:Lcom/yandex/metrica/impl/ob/ls;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mf;->b:Lcom/yandex/metrica/impl/ob/ai;

    .line 32
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/ai;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ls;->a(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/br;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/an;->a(Lcom/yandex/metrica/impl/aq;)V

    :cond_0
    return-void
.end method
