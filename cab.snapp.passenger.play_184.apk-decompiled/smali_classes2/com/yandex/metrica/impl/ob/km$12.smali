.class Lcom/yandex/metrica/impl/ob/km$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/km;->pauseSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/km;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/km;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/km$12;->a:Lcom/yandex/metrica/impl/ob/km;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/km$12;->a:Lcom/yandex/metrica/impl/ob/km;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/km;->a()Lcom/yandex/metrica/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/metrica/b;->pauseSession()V

    return-void
.end method
