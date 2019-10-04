.class public final Lcom/yandex/metrica/impl/ob/kh$a$f;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/kh$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1003
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 1004
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kh$a$f;->d()Lcom/yandex/metrica/impl/ob/kh$a$f;

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

    .line 983
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/kh$a$f;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kh$a$f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(IJ)V

    .line 1017
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kh$a$f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 1038
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method protected final c()I
    .locals 4

    .line 1022
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 1023
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    const/4 v3, 0x1

    .line 1024
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/kh$a$f;
    .locals 2

    const-wide/32 v0, 0x112a880

    .line 1008
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$f;->b:J

    const/4 v0, -0x1

    .line 1009
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kh$a$f;->a:I

    return-object p0
.end method
