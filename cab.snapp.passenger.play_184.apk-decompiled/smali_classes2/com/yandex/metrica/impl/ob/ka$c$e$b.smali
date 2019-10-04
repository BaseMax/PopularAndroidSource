.class public final Lcom/yandex/metrica/impl/ob/ka$c$e$b;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/impl/ob/ka$c$g;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 610
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d()Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 625
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    const/4 v0, 0x2

    .line 627
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 628
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 629
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 631
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 660
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 677
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 682
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    goto :goto_0

    .line 673
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    goto :goto_0

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    if-nez v0, :cond_5

    .line 667
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$g;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$g;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    .line 669
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method protected final c()I
    .locals 3

    .line 636
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 637
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 639
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    .line 641
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    .line 642
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    .line 645
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$e$b;
    .locals 1

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->b:Lcom/yandex/metrica/impl/ob/ka$c$g;

    const-string v0, ""

    .line 615
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 616
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->d:I

    const/4 v0, -0x1

    .line 617
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$b;->a:I

    return-object p0
.end method
