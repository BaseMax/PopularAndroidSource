.class final Lcom/google/zxing/c/a/a/a/e;
.super Lcom/google/zxing/c/a/a/a/i;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/i;-><init>(Lcom/google/zxing/common/a;)V

    .line 47
    iput-object p3, p0, Lcom/google/zxing/c/a/a/a/e;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/zxing/c/a/a/a/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(I)I
    .locals 1

    const v0, 0x186a0

    .line 106
    rem-int/2addr p1, v0

    return p1
.end method

.method protected final a(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x28

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x186a0

    .line 100
    div-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final parseInformation()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/h;
        }
    .end annotation

    .line 1048
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/j;->a:Lcom/google/zxing/common/a;

    .line 53
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->getSize()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x8

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/e;->b(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x14

    const/16 v2, 0x30

    .line 60
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/zxing/c/a/a/a/e;->b(Ljava/lang/StringBuilder;II)V

    .line 2052
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/j;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v3, 0x44

    const/16 v4, 0x10

    .line 1067
    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    const v3, 0x9600

    if-eq v1, v3, :cond_3

    const/16 v3, 0x28

    .line 1072
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    .line 1074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1076
    rem-int/lit8 v3, v1, 0x20

    .line 1077
    div-int/lit8 v1, v1, 0x20

    .line 1078
    rem-int/lit8 v4, v1, 0xc

    add-int/lit8 v4, v4, 0x1

    .line 1079
    div-int/lit8 v1, v1, 0xc

    .line 1082
    div-int/lit8 v5, v1, 0xa

    if-nez v5, :cond_0

    .line 1083
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1086
    div-int/lit8 v1, v4, 0xa

    if-nez v1, :cond_1

    .line 1087
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    div-int/lit8 v1, v3, 0xa

    if-nez v1, :cond_2

    .line 1091
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_4
    invoke-static {}, Lcom/google/zxing/h;->getNotFoundInstance()Lcom/google/zxing/h;

    move-result-object v0

    throw v0
.end method
