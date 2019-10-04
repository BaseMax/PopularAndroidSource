.class public final Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 765
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 766
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

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

    .line 737
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

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

    .line 779
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 780
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 781
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 783
    :cond_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 808
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 818
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 823
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I

    goto :goto_0

    .line 814
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method protected final c()I
    .locals 3

    .line 788
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 790
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 793
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;
    .locals 1

    const-string v0, ""

    .line 770
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 771
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->c:I

    const/4 v0, -0x1

    .line 772
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;->a:I

    return-object p0
.end method
