.class Lcom/yandex/metrica/impl/ba$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/kx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ba$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ba$1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ba$1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yandex/metrica/impl/ba$1$1;->a:Lcom/yandex/metrica/impl/ba$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba$1$1;->a:Lcom/yandex/metrica/impl/ba$1;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ba$1;->b:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->b(Lcom/yandex/metrica/impl/ba;)Lcom/yandex/metrica/impl/ob/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gc;->g()Lcom/yandex/metrica/impl/ob/gc;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/kw;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba$1$1;->a:Lcom/yandex/metrica/impl/ba$1;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ba$1;->b:Lcom/yandex/metrica/impl/ba;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ba;)Lcom/yandex/metrica/impl/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/ob/kw;)V

    .line 83
    iget-object v0, p0, Lcom/yandex/metrica/impl/ba$1$1;->a:Lcom/yandex/metrica/impl/ba$1;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ba$1;->b:Lcom/yandex/metrica/impl/ba;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/kw;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ba;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ba$1$1;->a()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/yandex/metrica/impl/ba$1$1;->a:Lcom/yandex/metrica/impl/ba$1;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ba$1;->b:Lcom/yandex/metrica/impl/ba;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ba;->a(Lcom/yandex/metrica/impl/ba;)Lcom/yandex/metrica/impl/bi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/bi;->a(Lcom/yandex/metrica/impl/ob/kw;)V

    .line 91
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ba$1$1;->a()V

    return-void
.end method
