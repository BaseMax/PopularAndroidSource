.class final Lcom/google/zxing/datamatrix/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/zxing/m;

.field final b:Lcom/google/zxing/m;

.field final c:I


# direct methods
.method private constructor <init>(Lcom/google/zxing/m;Lcom/google/zxing/m;I)V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/google/zxing/datamatrix/b/a$a;->a:Lcom/google/zxing/m;

    .line 407
    iput-object p2, p0, Lcom/google/zxing/datamatrix/b/a$a;->b:Lcom/google/zxing/m;

    .line 408
    iput p3, p0, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/m;Lcom/google/zxing/m;IB)V
    .locals 0

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/b/a$a;-><init>(Lcom/google/zxing/m;Lcom/google/zxing/m;I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/datamatrix/b/a$a;->a:Lcom/google/zxing/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/b/a$a;->b:Lcom/google/zxing/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/b/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
