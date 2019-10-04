.class Lcom/yandex/metrica/impl/ob/ab$c;
.super Lcom/yandex/metrica/impl/ob/ab$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/iw;

.field private final b:Lcom/yandex/metrica/impl/ob/gb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/iw;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ab$f;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    .line 322
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    .line 323
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/ac;->A()Lcom/yandex/metrica/impl/ob/gb;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ab$c;->b:Lcom/yandex/metrica/impl/ob/gb;

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    .line 329
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DONE"

    .line 336
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->b:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gb;->b()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ab$c;->b:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v3, v0}, Lcom/yandex/metrica/impl/ob/gb;->c(Ljava/lang/String;)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/iw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->b:Lcom/yandex/metrica/impl/ob/gb;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gb;->a()V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iw;->d()V

    .line 351
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iw;->e()V

    .line 352
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ab$c;->a:Lcom/yandex/metrica/impl/ob/iw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/iw;->c()V

    return-void
.end method
