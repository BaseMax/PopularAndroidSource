.class public final Lcom/getkeepsafe/a/a/d;
.super Lcom/getkeepsafe/a/a/c$b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/getkeepsafe/a/a/f;


# direct methods
.method public constructor <init>(ZLcom/getkeepsafe/a/a/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/getkeepsafe/a/a/c$b;-><init>()V

    .line 26
    iput-boolean p1, p0, Lcom/getkeepsafe/a/a/d;->bigEndian:Z

    .line 27
    iput-object p2, p0, Lcom/getkeepsafe/a/a/d;->a:Lcom/getkeepsafe/a/a/f;

    const/4 v0, 0x4

    .line 29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 30
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    .line 32
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->type:I

    const-wide/16 v1, 0x1c

    .line 33
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/getkeepsafe/a/a/d;->phoff:J

    const-wide/16 v1, 0x20

    .line 34
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/getkeepsafe/a/a/d;->shoff:J

    const-wide/16 v1, 0x2a

    .line 35
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->phentsize:I

    const-wide/16 v1, 0x2c

    .line 36
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->phnum:I

    const-wide/16 v1, 0x2e

    .line 37
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->shentsize:I

    const-wide/16 v1, 0x30

    .line 38
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->shnum:I

    const-wide/16 v1, 0x32

    .line 39
    invoke-virtual {p2, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->c(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lcom/getkeepsafe/a/a/d;->shstrndx:I

    return-void
.end method


# virtual methods
.method public final getDynamicStructure(JI)Lcom/getkeepsafe/a/a/c$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v6, Lcom/getkeepsafe/a/a/a;

    iget-object v1, p0, Lcom/getkeepsafe/a/a/d;->a:Lcom/getkeepsafe/a/a/f;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/getkeepsafe/a/a/a;-><init>(Lcom/getkeepsafe/a/a/f;Lcom/getkeepsafe/a/a/c$b;JI)V

    return-object v6
.end method

.method public final getProgramHeader(J)Lcom/getkeepsafe/a/a/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/getkeepsafe/a/a/g;

    iget-object v1, p0, Lcom/getkeepsafe/a/a/d;->a:Lcom/getkeepsafe/a/a/f;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/getkeepsafe/a/a/g;-><init>(Lcom/getkeepsafe/a/a/f;Lcom/getkeepsafe/a/a/c$b;J)V

    return-object v0
.end method

.method public final getSectionHeader(I)Lcom/getkeepsafe/a/a/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/getkeepsafe/a/a/i;

    iget-object v1, p0, Lcom/getkeepsafe/a/a/d;->a:Lcom/getkeepsafe/a/a/f;

    invoke-direct {v0, v1, p0, p1}, Lcom/getkeepsafe/a/a/i;-><init>(Lcom/getkeepsafe/a/a/f;Lcom/getkeepsafe/a/a/c$b;I)V

    return-object v0
.end method
