.class public Lcom/koushikdutta/async/http/d/b;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/d/b$a;
    }
.end annotation


# static fields
.field static final synthetic e:Z


# instance fields
.field d:Lcom/koushikdutta/async/l;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/koushikdutta/async/http/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/d/b;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    .line 10
    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    .line 11
    sget v0, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN$7ff18bd8:I

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    .line 46
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/d/b;->d:Lcom/koushikdutta/async/l;

    return-void
.end method

.method private a(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    .line 25
    new-instance v0, Lcom/koushikdutta/async/http/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/d/b;->report(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 50
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    if-lez p1, :cond_b

    .line 51
    sget-object p1, Lcom/koushikdutta/async/http/d/b$1;->a:[I

    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    const/16 v0, 0xd

    const/16 v1, 0xa

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    sget-boolean p1, Lcom/koushikdutta/async/http/d/b;->e:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 95
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getByteChar()C

    move-result p1

    .line 2032
    invoke-direct {p0, p1, v1}, Lcom/koushikdutta/async/http/d/b;->a(CC)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 97
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    if-lez p1, :cond_3

    .line 98
    sget p1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN$7ff18bd8:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    goto :goto_1

    .line 102
    :cond_3
    sget p1, Lcom/koushikdutta/async/http/d/b$a;->COMPLETE$7ff18bd8:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/b;->report(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x0

    .line 105
    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getByteChar()C

    move-result p1

    .line 1036
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/d/b;->a(CC)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 92
    :cond_4
    sget p1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_CRLF$7ff18bd8:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    goto :goto_0

    .line 78
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    .line 79
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 80
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    .line 81
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    if-nez v0, :cond_5

    .line 82
    sget v0, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_CR$7ff18bd8:I

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    :cond_5
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/b;->d:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, v0, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;I)V

    .line 87
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/b;->d:Lcom/koushikdutta/async/l;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    goto :goto_0

    .line 73
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getByteChar()C

    move-result p1

    .line 1032
    invoke-direct {p0, p1, v1}, Lcom/koushikdutta/async/http/d/b;->a(CC)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 75
    :cond_6
    sget p1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK$7ff18bd8:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    goto/16 :goto_0

    .line 53
    :pswitch_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->getByteChar()C

    move-result p1

    if-ne p1, v0, :cond_7

    .line 55
    sget p1, Lcom/koushikdutta/async/http/d/b$a;->CHUNK_LEN_CR$7ff18bd8:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    goto :goto_2

    .line 58
    :cond_7
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x66

    if-gt p1, v0, :cond_8

    .line 60
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    add-int/lit8 p1, p1, -0x61

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    goto :goto_2

    :cond_8
    const/16 v0, 0x30

    if-lt p1, v0, :cond_9

    const/16 v0, 0x39

    if-gt p1, v0, :cond_9

    .line 62
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    add-int/lit8 p1, p1, -0x30

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    goto :goto_2

    :cond_9
    const/16 v0, 0x41

    if-lt p1, v0, :cond_a

    const/16 v0, 0x46

    if-gt p1, v0, :cond_a

    .line 64
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    add-int/lit8 p1, p1, -0x41

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    .line 70
    :goto_2
    iget p1, p0, Lcom/koushikdutta/async/http/d/b;->f:I

    iput p1, p0, Lcom/koushikdutta/async/http/d/b;->g:I

    goto/16 :goto_0

    .line 66
    :cond_a
    new-instance p2, Lcom/koushikdutta/async/http/d/a;

    const-string v0, "invalid chunk length: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/http/d/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/d/b;->report(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-void

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/b;->report(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    .line 41
    iget v0, p0, Lcom/koushikdutta/async/http/d/b;->h:I

    sget v1, Lcom/koushikdutta/async/http/d/b$a;->COMPLETE$7ff18bd8:I

    if-eq v0, v1, :cond_0

    .line 42
    new-instance p1, Lcom/koushikdutta/async/http/d/a;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/d/a;-><init>(Ljava/lang/String;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    return-void
.end method
