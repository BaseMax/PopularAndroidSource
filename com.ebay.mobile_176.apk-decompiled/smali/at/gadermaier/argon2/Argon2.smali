.class public Lat/gadermaier/argon2/Argon2;
.super Ljava/lang/Object;
.source "Argon2.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private additional:[B

.field private charset:Ljava/nio/charset/Charset;

.field private clearMemory:Z

.field private duration:D

.field private encodedOnly:Z

.field private iterations:I

.field private lanes:I

.field private memory:I

.field private output:[B

.field private outputLength:I

.field private password:[B

.field private rawOnly:Z

.field private salt:[B

.field private secret:[B

.field private type:Lat/gadermaier/argon2/model/Argon2Type;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lat/gadermaier/argon2/Argon2;->clearMemory:Z

    const-string v1, "UTF-8"

    .line 35
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lat/gadermaier/argon2/Argon2;->charset:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lat/gadermaier/argon2/Argon2;->encodedOnly:Z

    .line 38
    iput-boolean v1, p0, Lat/gadermaier/argon2/Argon2;->rawOnly:Z

    .line 41
    iput v0, p0, Lat/gadermaier/argon2/Argon2;->lanes:I

    const/16 v0, 0x20

    .line 42
    iput v0, p0, Lat/gadermaier/argon2/Argon2;->outputLength:I

    const/16 v0, 0x1000

    .line 43
    iput v0, p0, Lat/gadermaier/argon2/Argon2;->memory:I

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lat/gadermaier/argon2/Argon2;->iterations:I

    const/16 v0, 0x13

    .line 45
    iput v0, p0, Lat/gadermaier/argon2/Argon2;->version:I

    .line 46
    sget-object v0, Lat/gadermaier/argon2/Constants$Defaults;->TYPE_DEF:Lat/gadermaier/argon2/model/Argon2Type;

    iput-object v0, p0, Lat/gadermaier/argon2/Argon2;->type:Lat/gadermaier/argon2/model/Argon2Type;

    return-void
.end method

.method private argon2_hash()V
    .locals 4

    .line 84
    invoke-static {p0}, Lat/gadermaier/argon2/Validation;->validateInput(Lat/gadermaier/argon2/Argon2;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 88
    new-instance v2, Lat/gadermaier/argon2/model/Instance;

    invoke-direct {v2, p0}, Lat/gadermaier/argon2/model/Instance;-><init>(Lat/gadermaier/argon2/Argon2;)V

    .line 90
    invoke-static {v2, p0}, Lat/gadermaier/argon2/algorithm/Initialize;->initialize(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/Argon2;)V

    .line 91
    invoke-static {v2}, Lat/gadermaier/argon2/algorithm/FillMemory;->fillMemoryBlocks(Lat/gadermaier/argon2/model/Instance;)V

    .line 92
    invoke-static {v2, p0}, Lat/gadermaier/argon2/algorithm/Finalize;->finalize(Lat/gadermaier/argon2/model/Instance;Lat/gadermaier/argon2/Argon2;)V

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lat/gadermaier/argon2/Argon2;->duration:D

    return-void
.end method

.method private static toByteArray([CLjava/nio/charset/Charset;)[B
    .locals 2

    .line 52
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 54
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 98
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    iget-object v2, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 101
    :cond_0
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    iget-object v2, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 104
    :cond_1
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    iget-object v2, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 107
    :cond_2
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    iget-object v2, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_3
    return-void
.end method

.method public getAdditional()[B
    .locals 1

    .line 206
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    return-object v0
.end method

.method public getAdditionalLength()I
    .locals 1

    .line 215
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 267
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getEncoded()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .line 219
    iget v0, p0, Lat/gadermaier/argon2/Argon2;->iterations:I

    return v0
.end method

.method public getLanes()I
    .locals 1

    .line 237
    iget v0, p0, Lat/gadermaier/argon2/Argon2;->lanes:I

    return v0
.end method

.method public getMemory()I
    .locals 1

    .line 228
    iget v0, p0, Lat/gadermaier/argon2/Argon2;->memory:I

    return v0
.end method

.method public getOutput()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->output:[B

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    .line 158
    iget v0, p0, Lat/gadermaier/argon2/Argon2;->outputLength:I

    return v0
.end method

.method public getOutputString()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->output:[B

    invoke-static {v0}, Lat/gadermaier/argon2/Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[B
    .locals 1

    .line 167
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    return-object v0
.end method

.method public getPasswordLength()I
    .locals 1

    .line 176
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    array-length v0, v0

    return v0
.end method

.method public getSalt()[B
    .locals 1

    .line 180
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    .line 189
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    array-length v0, v0

    return v0
.end method

.method public getSecret()[B
    .locals 1

    .line 193
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    return-object v0
.end method

.method public getSecretLength()I
    .locals 1

    .line 202
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Lat/gadermaier/argon2/model/Argon2Type;
    .locals 1

    .line 250
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->type:Lat/gadermaier/argon2/model/Argon2Type;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 241
    iget v0, p0, Lat/gadermaier/argon2/Argon2;->version:I

    return v0
.end method

.method public hash()V
    .locals 2

    .line 76
    :try_start_0
    invoke-direct {p0}, Lat/gadermaier/argon2/Argon2;->argon2_hash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->isClearMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->clear()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->isClearMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->clear()V

    .line 80
    :cond_1
    throw v0
.end method

.method public hash([B[B)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/Argon2;->setPassword([B)Lat/gadermaier/argon2/Argon2;

    .line 62
    invoke-virtual {p0, p2}, Lat/gadermaier/argon2/Argon2;->setSalt([B)Lat/gadermaier/argon2/Argon2;

    .line 64
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->hash()V

    return-void
.end method

.method public hash([CLjava/lang/String;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/Argon2;->setPassword([C)Lat/gadermaier/argon2/Argon2;

    .line 69
    invoke-virtual {p0, p2}, Lat/gadermaier/argon2/Argon2;->setSalt(Ljava/lang/String;)Lat/gadermaier/argon2/Argon2;

    .line 71
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->hash()V

    return-void
.end method

.method public isClearMemory()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lat/gadermaier/argon2/Argon2;->clearMemory:Z

    return v0
.end method

.method printSummary()V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lat/gadermaier/argon2/Argon2;->encodedOnly:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getEncoded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_0
    iget-boolean v0, p0, Lat/gadermaier/argon2/Argon2;->rawOnly:Z

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getOutputString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type:\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lat/gadermaier/argon2/Argon2;->type:Lat/gadermaier/argon2/model/Argon2Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iterations:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lat/gadermaier/argon2/Argon2;->iterations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory:\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lat/gadermaier/argon2/Argon2;->memory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " KiB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parallelism:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lat/gadermaier/argon2/Argon2;->lanes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hash:\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getOutputString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded:\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lat/gadermaier/argon2/Argon2;->duration:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAdditional([B)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 210
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->additional:[B

    return-object p0
.end method

.method public setClearMemory(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lat/gadermaier/argon2/Argon2;->clearMemory:Z

    return-void
.end method

.method public setEncodedOnly(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lat/gadermaier/argon2/Argon2;->encodedOnly:Z

    return-void
.end method

.method public setIterations(I)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 223
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->iterations:I

    return-object p0
.end method

.method public setMemory(I)Lat/gadermaier/argon2/Argon2;
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 232
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->memory:I

    return-object p0
.end method

.method public setMemoryInKiB(I)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 128
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->memory:I

    return-object p0
.end method

.method public setOutput([B)V
    .locals 0

    .line 150
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->output:[B

    return-void
.end method

.method public setOutputLength(I)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 162
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->outputLength:I

    return-object p0
.end method

.method public setParallelism(I)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 133
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->lanes:I

    return-object p0
.end method

.method public setPassword([B)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 171
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->password:[B

    return-object p0
.end method

.method public setPassword([C)Lat/gadermaier/argon2/Argon2;
    .locals 1

    .line 138
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lat/gadermaier/argon2/Argon2;->toByteArray([CLjava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/Argon2;->setPassword([B)Lat/gadermaier/argon2/Argon2;

    move-result-object p1

    return-object p1
.end method

.method public setRawOnly(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lat/gadermaier/argon2/Argon2;->rawOnly:Z

    return-void
.end method

.method public setSalt(Ljava/lang/String;)Lat/gadermaier/argon2/Argon2;
    .locals 1

    .line 142
    iget-object v0, p0, Lat/gadermaier/argon2/Argon2;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lat/gadermaier/argon2/Argon2;->setSalt([B)Lat/gadermaier/argon2/Argon2;

    move-result-object p1

    return-object p1
.end method

.method public setSalt([B)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 184
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->salt:[B

    return-object p0
.end method

.method public setSecret([B)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 197
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->secret:[B

    return-object p0
.end method

.method public setType(Lat/gadermaier/argon2/model/Argon2Type;)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 254
    iput-object p1, p0, Lat/gadermaier/argon2/Argon2;->type:Lat/gadermaier/argon2/model/Argon2Type;

    return-object p0
.end method

.method public setVersion(I)Lat/gadermaier/argon2/Argon2;
    .locals 0

    .line 245
    iput p1, p0, Lat/gadermaier/argon2/Argon2;->version:I

    return-object p0
.end method
