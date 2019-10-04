.class abstract Lcom/yandex/metrica/impl/ob/ab$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ac;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ab$f;->a:Lcom/yandex/metrica/impl/ob/ac;

    return-void
.end method


# virtual methods
.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method e()Lcom/yandex/metrica/impl/ob/ac;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$f;->a:Lcom/yandex/metrica/impl/ob/ac;

    return-object v0
.end method

.method f()V
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ab$f;->b()V

    :cond_0
    return-void
.end method
