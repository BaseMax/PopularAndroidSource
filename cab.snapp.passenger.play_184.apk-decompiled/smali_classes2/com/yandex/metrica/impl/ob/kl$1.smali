.class Lcom/yandex/metrica/impl/ob/kl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/kl;->a(Lcom/yandex/metrica/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/c;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/kl;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/kl;Lcom/yandex/metrica/c;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/kl$1;->b:Lcom/yandex/metrica/impl/ob/kl;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/kl$1;->a:Lcom/yandex/metrica/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kl$1;->b:Lcom/yandex/metrica/impl/ob/kl;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kl$1;->a:Lcom/yandex/metrica/c;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/kl;->b(Lcom/yandex/metrica/c;)V

    return-void
.end method
