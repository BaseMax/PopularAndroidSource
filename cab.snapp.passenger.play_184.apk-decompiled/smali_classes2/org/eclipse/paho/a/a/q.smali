.class public Lorg/eclipse/paho/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->b:Z

    .line 29
    iput v0, p0, Lorg/eclipse/paho/a/a/q;->c:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->d:Z

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->e:Z

    new-array v0, v0, [B

    .line 56
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/a/a/q;->setPayload([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->b:Z

    .line 29
    iput v0, p0, Lorg/eclipse/paho/a/a/q;->c:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->d:Z

    .line 31
    iput-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->e:Z

    .line 65
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/a/a/q;->setPayload([B)V

    return-void
.end method

.method private a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static validateQos(I)V
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clearPayload()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/q;->a()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 83
    iput-object v0, p0, Lorg/eclipse/paho/a/a/q;->a:[B

    return-void
.end method

.method public getId()I
    .locals 1

    .line 241
    iget v0, p0, Lorg/eclipse/paho/a/a/q;->f:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/eclipse/paho/a/a/q;->a:[B

    return-object v0
.end method

.method public getQos()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/eclipse/paho/a/a/q;->c:I

    return v0
.end method

.method public isDuplicate()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->e:Z

    return v0
.end method

.method public isRetained()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/eclipse/paho/a/a/q;->d:Z

    return v0
.end method

.method protected setDuplicate(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/q;->e:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 232
    iput p1, p0, Lorg/eclipse/paho/a/a/q;->f:I

    return-void
.end method

.method public setPayload([B)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/q;->a()V

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/eclipse/paho/a/a/q;->a:[B

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setQos(I)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/q;->a()V

    .line 181
    invoke-static {p1}, Lorg/eclipse/paho/a/a/q;->validateQos(I)V

    .line 182
    iput p1, p0, Lorg/eclipse/paho/a/a/q;->c:I

    return-void
.end method

.method public setRetained(Z)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/eclipse/paho/a/a/q;->a()V

    .line 126
    iput-boolean p1, p0, Lorg/eclipse/paho/a/a/q;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/paho/a/a/q;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
