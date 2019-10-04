.class public final Lcom/getkeepsafe/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/a/a/c;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:I

.field private final b:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x464c457f

    .line 32
    iput v0, p0, Lcom/getkeepsafe/a/a/f;->a:I

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/getkeepsafe/a/a/f;->b:Ljava/nio/channels/FileChannel;

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File is null or does not exist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/getkeepsafe/a/a/c$b;JJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/getkeepsafe/a/a/c$b;->getProgramHeader(J)Lcom/getkeepsafe/a/a/c$c;

    move-result-object v2

    .line 132
    iget-wide v3, v2, Lcom/getkeepsafe/a/a/c$c;->type:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 134
    iget-wide v3, v2, Lcom/getkeepsafe/a/a/c$c;->vaddr:J

    cmp-long v7, v3, p3

    if-gtz v7, :cond_0

    iget-wide v3, v2, Lcom/getkeepsafe/a/a/c$c;->vaddr:J

    iget-wide v7, v2, Lcom/getkeepsafe/a/a/c$c;->memsz:J

    add-long/2addr v3, v7

    cmp-long v7, p3, v3

    if-gtz v7, :cond_0

    .line 136
    iget-wide p0, v2, Lcom/getkeepsafe/a/a/c$c;->vaddr:J

    sub-long/2addr p3, p0

    iget-wide p0, v2, Lcom/getkeepsafe/a/a/c$c;->offset:J

    add-long/2addr p3, p0

    return-wide p3

    :cond_0
    add-long/2addr v0, v5

    goto :goto_0

    .line 141
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not map vma to file offset!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private a(Ljava/nio/ByteBuffer;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v1, 0x0

    :goto_0
    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 184
    iget-object v3, p0, Lcom/getkeepsafe/a/a/f;->b:Ljava/nio/channels/FileChannel;

    add-long v4, p2, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 186
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 191
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private d(Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/getkeepsafe/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_0

    int-to-char p2, p2

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/nio/ByteBuffer;J)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 175
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    .line 176
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    return p1
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 160
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    return-wide p1
.end method

.method protected final b(Ljava/nio/ByteBuffer;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 165
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    .line 166
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method protected final c(Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 170
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/getkeepsafe/a/a/f;->a(Ljava/nio/ByteBuffer;JI)V

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    return p1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/getkeepsafe/a/a/f;->b:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public final parseHeader()Lcom/getkeepsafe/a/a/c$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/getkeepsafe/a/a/f;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v0, 0x8

    .line 48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->b(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    const-wide/32 v3, 0x464c457f

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const-wide/16 v1, 0x4

    .line 54
    invoke-direct {p0, v0, v1, v2}, Lcom/getkeepsafe/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v1

    const-wide/16 v2, 0x5

    .line 55
    invoke-direct {p0, v0, v2, v3}, Lcom/getkeepsafe/a/a/f;->e(Ljava/nio/ByteBuffer;J)S

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    .line 57
    new-instance v1, Lcom/getkeepsafe/a/a/d;

    invoke-direct {v1, v0, p0}, Lcom/getkeepsafe/a/a/d;-><init>(ZLcom/getkeepsafe/a/a/f;)V

    return-object v1

    :cond_1
    if-ne v1, v3, :cond_2

    .line 59
    new-instance v1, Lcom/getkeepsafe/a/a/e;

    invoke-direct {v1, v0, p0}, Lcom/getkeepsafe/a/a/e;-><init>(ZLcom/getkeepsafe/a/a/f;)V

    return-object v1

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid class type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ELF Magic!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parseNeededDependencies()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    iget-object v1, v0, Lcom/getkeepsafe/a/a/f;->b:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/getkeepsafe/a/a/f;->parseHeader()Lcom/getkeepsafe/a/a/c$b;

    move-result-object v4

    const/16 v5, 0x8

    .line 69
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 70
    iget-boolean v6, v4, Lcom/getkeepsafe/a/a/c$b;->bigEndian:Z

    if-eqz v6, :cond_0

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    iget v6, v4, Lcom/getkeepsafe/a/a/c$b;->phnum:I

    int-to-long v6, v6

    const-wide/32 v8, 0xffff

    const/4 v10, 0x0

    cmp-long v11, v6, v8

    if-nez v11, :cond_1

    .line 83
    invoke-virtual {v4, v10}, Lcom/getkeepsafe/a/a/c$b;->getSectionHeader(I)Lcom/getkeepsafe/a/a/c$d;

    move-result-object v6

    .line 84
    iget-wide v6, v6, Lcom/getkeepsafe/a/a/c$d;->info:J

    :cond_1
    move-wide v8, v2

    :goto_1
    const-wide/16 v11, 0x1

    cmp-long v13, v8, v6

    if-gez v13, :cond_3

    .line 89
    invoke-virtual {v4, v8, v9}, Lcom/getkeepsafe/a/a/c$b;->getProgramHeader(J)Lcom/getkeepsafe/a/a/c$c;

    move-result-object v13

    .line 90
    iget-wide v14, v13, Lcom/getkeepsafe/a/a/c$c;->type:J

    const-wide/16 v16, 0x2

    cmp-long v18, v14, v16

    if-nez v18, :cond_2

    .line 91
    iget-wide v8, v13, Lcom/getkeepsafe/a/a/c$c;->offset:J

    goto :goto_2

    :cond_2
    add-long/2addr v8, v11

    goto :goto_1

    :cond_3
    move-wide v8, v2

    :goto_2
    cmp-long v13, v8, v2

    if-nez v13, :cond_4

    .line 98
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 102
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-wide v14, v2

    .line 106
    :goto_3
    invoke-virtual {v4, v8, v9, v10}, Lcom/getkeepsafe/a/a/c$b;->getDynamicStructure(JI)Lcom/getkeepsafe/a/a/c$a;

    move-result-object v2

    move-wide/from16 v18, v8

    .line 107
    iget-wide v8, v2, Lcom/getkeepsafe/a/a/c$a;->tag:J

    cmp-long v3, v8, v11

    if-nez v3, :cond_5

    .line 108
    iget-wide v8, v2, Lcom/getkeepsafe/a/a/c$a;->val:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 109
    :cond_5
    iget-wide v8, v2, Lcom/getkeepsafe/a/a/c$a;->tag:J

    const-wide/16 v20, 0x5

    cmp-long v3, v8, v20

    if-nez v3, :cond_6

    .line 110
    iget-wide v8, v2, Lcom/getkeepsafe/a/a/c$a;->val:J

    move-wide v14, v8

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 113
    iget-wide v2, v2, Lcom/getkeepsafe/a/a/c$a;->tag:J

    const-wide/16 v8, 0x0

    cmp-long v16, v2, v8

    if-nez v16, :cond_9

    cmp-long v2, v14, v8

    if-eqz v2, :cond_8

    .line 120
    invoke-static {v4, v6, v7, v14, v15}, Lcom/getkeepsafe/a/a/f;->a(Lcom/getkeepsafe/a/a/c$b;JJ)J

    move-result-wide v2

    .line 121
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 122
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-direct {v0, v5, v6, v7}, Lcom/getkeepsafe/a/a/f;->d(Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    return-object v1

    .line 116
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "String table offset not found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-wide/from16 v8, v18

    goto :goto_3
.end method
