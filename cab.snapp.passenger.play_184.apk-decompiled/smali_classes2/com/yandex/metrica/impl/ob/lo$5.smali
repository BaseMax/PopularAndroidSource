.class Lcom/yandex/metrica/impl/ob/lo$5;
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
        "Lcom/yandex/metrica/impl/ob/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/lo;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/lo;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/lo$5;->a:Lcom/yandex/metrica/impl/ob/lo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/yandex/metrica/impl/ob/j;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/yandex/metrica/impl/ob/s;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/lo$5;->a(Lcom/yandex/metrica/impl/ob/s;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/s;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/lo$5;->a:Lcom/yandex/metrica/impl/ob/lo;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/lo;->d(Lcom/yandex/metrica/impl/ob/lo;)Lcom/yandex/metrica/impl/ob/ln;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/s;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ln;->a(Ljava/lang/String;)V

    return-void
.end method
