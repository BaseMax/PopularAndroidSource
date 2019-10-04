.class Lcom/yandex/metrica/impl/ak$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ak;->d(Lcom/yandex/metrica/impl/ob/ma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/eq;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/eq;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/yandex/metrica/impl/ak$5;->a:Lcom/yandex/metrica/impl/ob/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/yandex/metrica/impl/ak$5;->a:Lcom/yandex/metrica/impl/ob/eq;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/eq;->a()V

    return-void
.end method
