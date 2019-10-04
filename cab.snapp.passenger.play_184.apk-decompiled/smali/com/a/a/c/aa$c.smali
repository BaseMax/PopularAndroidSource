.class final Lcom/a/a/c/aa$c;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a/b;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x2

    .line 470
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 471
    iget-object v0, p1, Lcom/a/a/c/a/a/b;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/c/aa$c;->a:Ljava/lang/String;

    .line 472
    iget-object p1, p1, Lcom/a/a/c/a/a/b;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/a/a/c/aa$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/a/a/c/aa$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/a/a/c/aa$c;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 479
    :cond_0
    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x2

    .line 478
    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/a/a/c/aa$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    .line 486
    iget-object v0, p0, Lcom/a/a/c/aa$c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    return-void
.end method
