.class Lcom/yandex/metrica/impl/bi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/bj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/bk;Lcom/yandex/metrica/impl/bf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bk;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/yandex/metrica/impl/bi$4;->a:Lcom/yandex/metrica/impl/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/i;
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/bi$4;->a:Lcom/yandex/metrica/impl/bk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->a()Landroid/util/Pair;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/i;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->c(I)Lcom/yandex/metrica/impl/i;

    move-result-object p1

    return-object p1
.end method
