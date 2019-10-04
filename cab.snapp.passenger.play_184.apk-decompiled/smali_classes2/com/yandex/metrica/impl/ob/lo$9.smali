.class Lcom/yandex/metrica/impl/ob/lo$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/lo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/k<",
        "Lcom/yandex/metrica/impl/ob/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/lo;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/lo;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lo$9;->a:Lcom/yandex/metrica/impl/ob/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 0

    .line 276
    check-cast p1, Lcom/yandex/metrica/impl/ob/q;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lo$9;->a(Lcom/yandex/metrica/impl/ob/q;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/q;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lo$9;->a:Lcom/yandex/metrica/impl/ob/lo;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/q;->a:Lcom/yandex/metrica/impl/ob/lr;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/lo;->a(Lcom/yandex/metrica/impl/ob/lr;)V

    .line 279
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/lo$9;->a:Lcom/yandex/metrica/impl/ob/lo;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/lo;->c()V

    return-void
.end method
