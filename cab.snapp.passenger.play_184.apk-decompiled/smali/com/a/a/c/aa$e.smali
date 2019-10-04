.class final Lcom/a/a/c/aa$e;
.super Lcom/a/a/c/aa$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(JLjava/lang/String;[Lcom/a/a/c/aa$j;)V
    .locals 1

    const/16 v0, 0xa

    .line 181
    invoke-direct {p0, v0, p4}, Lcom/a/a/c/aa$j;-><init>(I[Lcom/a/a/c/aa$j;)V

    .line 182
    iput-wide p1, p0, Lcom/a/a/c/aa$e;->a:J

    .line 183
    iput-object p3, p0, Lcom/a/a/c/aa$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 3

    .line 188
    iget-wide v0, p0, Lcom/a/a/c/aa$e;->a:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/a/a/c/e;->computeUInt64Size(IJ)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/a/a/c/aa$e;->b:Ljava/lang/String;

    .line 190
    invoke-static {v1}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/a/a/c/e;->computeBytesSize(ILcom/a/a/c/b;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeProperties(Lcom/a/a/c/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-wide v0, p0, Lcom/a/a/c/aa$e;->a:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/a/a/c/e;->writeUInt64(IJ)V

    .line 197
    iget-object v0, p0, Lcom/a/a/c/aa$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/c/b;->copyFromUtf8(Ljava/lang/String;)Lcom/a/a/c/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/a/a/c/e;->writeBytes(ILcom/a/a/c/b;)V

    return-void
.end method
