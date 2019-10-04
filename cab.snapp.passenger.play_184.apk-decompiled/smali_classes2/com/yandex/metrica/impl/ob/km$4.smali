.class Lcom/yandex/metrica/impl/ob/km$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->setStatisticsSending(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;Z)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$4;->b:Lcom/yandex/metrica/impl/ob/km;

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/km$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km$4;->b:Lcom/yandex/metrica/impl/ob/km;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/km;->a()Lcom/yandex/metrica/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/km$4;->a:Z

    invoke-interface {v0, v1}, Lcom/yandex/metrica/b;->setStatisticsSending(Z)V

    return-void
.end method
