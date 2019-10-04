.class public final Lcom/google/zxing/pdf417/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:I

.field private k:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/zxing/pdf417/c;->d:I

    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, p0, Lcom/google/zxing/pdf417/c;->h:J

    .line 32
    iput-wide v1, p0, Lcom/google/zxing/pdf417/c;->i:J

    .line 33
    iput v0, p0, Lcom/google/zxing/pdf417/c;->j:I

    return-void
.end method


# virtual methods
.method public final getAddressee()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/zxing/pdf417/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getChecksum()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/google/zxing/pdf417/c;->j:I

    return v0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/zxing/pdf417/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/zxing/pdf417/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/google/zxing/pdf417/c;->h:J

    return-wide v0
.end method

.method public final getOptionalData()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/zxing/pdf417/c;->k:[I

    return-object v0
.end method

.method public final getSegmentCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/zxing/pdf417/c;->d:I

    return v0
.end method

.method public final getSegmentIndex()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/zxing/pdf417/c;->a:I

    return v0
.end method

.method public final getSender()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/zxing/pdf417/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/google/zxing/pdf417/c;->i:J

    return-wide v0
.end method

.method public final isLastSegment()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/c;->c:Z

    return v0
.end method

.method public final setAddressee(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/zxing/pdf417/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final setChecksum(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/zxing/pdf417/c;->j:I

    return-void
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/zxing/pdf417/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/zxing/pdf417/c;->g:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/google/zxing/pdf417/c;->h:J

    return-void
.end method

.method public final setLastSegment(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/c;->c:Z

    return-void
.end method

.method public final setOptionalData([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/google/zxing/pdf417/c;->k:[I

    return-void
.end method

.method public final setSegmentCount(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/zxing/pdf417/c;->d:I

    return-void
.end method

.method public final setSegmentIndex(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/zxing/pdf417/c;->a:I

    return-void
.end method

.method public final setSender(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/zxing/pdf417/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/google/zxing/pdf417/c;->i:J

    return-void
.end method
