.class final Lcom/squareup/picasso/aa$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/aa;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/aa;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v0, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/picasso/aa$a$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/picasso/aa$a$1;-><init>(Lcom/squareup/picasso/aa$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 3092
    iget v1, v0, Lcom/squareup/picasso/aa;->l:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/squareup/picasso/aa;->l:I

    .line 3093
    iget-wide v1, v0, Lcom/squareup/picasso/aa;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/squareup/picasso/aa;->f:J

    .line 3094
    iget p1, v0, Lcom/squareup/picasso/aa;->l:I

    iget-wide v1, v0, Lcom/squareup/picasso/aa;->f:J

    int-to-long v3, p1

    .line 3123
    div-long/2addr v1, v3

    .line 3094
    iput-wide v1, v0, Lcom/squareup/picasso/aa;->i:J

    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 2104
    iget p1, v0, Lcom/squareup/picasso/aa;->n:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/squareup/picasso/aa;->n:I

    .line 2105
    iget-wide v3, v0, Lcom/squareup/picasso/aa;->h:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/squareup/picasso/aa;->h:J

    .line 2106
    iget p1, v0, Lcom/squareup/picasso/aa;->m:I

    iget-wide v1, v0, Lcom/squareup/picasso/aa;->h:J

    int-to-long v3, p1

    .line 2123
    div-long/2addr v1, v3

    .line 2106
    iput-wide v1, v0, Lcom/squareup/picasso/aa;->k:J

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    .line 1098
    iget p1, v0, Lcom/squareup/picasso/aa;->m:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/squareup/picasso/aa;->m:I

    .line 1099
    iget-wide v3, v0, Lcom/squareup/picasso/aa;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/squareup/picasso/aa;->g:J

    .line 1100
    iget p1, v0, Lcom/squareup/picasso/aa;->m:I

    iget-wide v1, v0, Lcom/squareup/picasso/aa;->g:J

    int-to-long v3, p1

    .line 1123
    div-long/2addr v1, v3

    .line 1100
    iput-wide v1, v0, Lcom/squareup/picasso/aa;->j:J

    return-void

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    .line 1088
    iget-wide v3, p1, Lcom/squareup/picasso/aa;->e:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/squareup/picasso/aa;->e:J

    return-void

    .line 138
    :cond_4
    iget-object p1, p0, Lcom/squareup/picasso/aa$a;->a:Lcom/squareup/picasso/aa;

    .line 1084
    iget-wide v3, p1, Lcom/squareup/picasso/aa;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Lcom/squareup/picasso/aa;->d:J

    return-void
.end method
