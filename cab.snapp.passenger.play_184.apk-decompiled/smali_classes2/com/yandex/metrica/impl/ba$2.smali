.class Lcom/yandex/metrica/impl/ba$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ba;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ba;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ba;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba$2;->a:Lcom/yandex/metrica/impl/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba$2;->a:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->c(Lcom/yandex/metrica/impl/ba;)V

    return-void
.end method
