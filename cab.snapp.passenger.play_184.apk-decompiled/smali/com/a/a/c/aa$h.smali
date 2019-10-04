.class final Lcom/a/a/c/aa$h;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field a:Lcom/a/a/c/b;


# direct methods
.method public constructor <init>(Lcom/a/a/c/b;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/a/a/c/aa$j;

    const/4 v1, 0x6

    .line 264
    invoke-direct {p0, v1, v0}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 265
    iput-object p1, p0, Lcom/a/a/c/aa$h;->a:Lcom/a/a/c/b;

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/a/a/c/aa$h;->a:Lcom/a/a/c/b;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v0

    return v0
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/a/a/c/aa$h;->a:Lcom/a/a/c/b;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    return-void
.end method
