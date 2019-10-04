.class Lcom/yandex/metrica/impl/bh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bh;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bh;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/yandex/metrica/impl/bh$1;->a:Lcom/yandex/metrica/impl/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh$1;->a:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bh;->d()V

    return-void
.end method
