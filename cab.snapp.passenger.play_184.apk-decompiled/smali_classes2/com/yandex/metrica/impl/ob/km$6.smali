.class Lcom/yandex/metrica/impl/ob/km$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->reportEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$6;->b:Lcom/yandex/metrica/impl/ob/km;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/km$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km$6;->b:Lcom/yandex/metrica/impl/ob/km;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/km;->a()Lcom/yandex/metrica/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/km$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/b;->reportEvent(Ljava/lang/String;)V

    return-void
.end method
