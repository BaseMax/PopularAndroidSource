.class public Lc/e/a/a/k/h/f$a;
.super Ljava/lang/Object;
.source "WebvttCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/k/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Landroid/text/SpannableStringBuilder;

.field public d:Landroid/text/Layout$Alignment;

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/k/h/f$a;->c()V

    return-void
.end method


# virtual methods
.method public a(F)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 7
    iput p1, p0, Lc/e/a/a/k/h/f$a;->e:F

    return-object p0
.end method

.method public a(I)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 8
    iput p1, p0, Lc/e/a/a/k/h/f$a;->g:I

    return-object p0
.end method

.method public a(J)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lc/e/a/a/k/h/f$a;->b:J

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 6
    iput-object p1, p0, Lc/e/a/a/k/h/f$a;->d:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Landroid/text/SpannableStringBuilder;)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lc/e/a/a/k/h/f$a;->c:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public a()Lc/e/a/a/k/h/f;
    .locals 15

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/f$a;->h:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/k/h/f$a;->i:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/k/h/f$a;->b()Lc/e/a/a/k/h/f$a;

    .line 3
    :cond_0
    new-instance v0, Lc/e/a/a/k/h/f;

    iget-wide v3, p0, Lc/e/a/a/k/h/f$a;->a:J

    iget-wide v5, p0, Lc/e/a/a/k/h/f$a;->b:J

    iget-object v7, p0, Lc/e/a/a/k/h/f$a;->c:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Lc/e/a/a/k/h/f$a;->d:Landroid/text/Layout$Alignment;

    iget v9, p0, Lc/e/a/a/k/h/f$a;->e:F

    iget v10, p0, Lc/e/a/a/k/h/f$a;->f:I

    iget v11, p0, Lc/e/a/a/k/h/f$a;->g:I

    iget v12, p0, Lc/e/a/a/k/h/f$a;->h:F

    iget v13, p0, Lc/e/a/a/k/h/f$a;->i:I

    iget v14, p0, Lc/e/a/a/k/h/f$a;->j:F

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lc/e/a/a/k/h/f;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method

.method public final b()Lc/e/a/a/k/h/f$a;
    .locals 4

    .line 4
    iget-object v0, p0, Lc/e/a/a/k/h/f$a;->d:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lc/e/a/a/k/h/f$a;->i:I

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lc/e/a/a/k/h/e;->a:[I

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/e/a/a/k/h/f$a;->d:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebvttCueBuilder"

    invoke-static {v2, v0}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput v1, p0, Lc/e/a/a/k/h/f$a;->i:I

    goto :goto_0

    .line 9
    :cond_1
    iput v3, p0, Lc/e/a/a/k/h/f$a;->i:I

    goto :goto_0

    .line 10
    :cond_2
    iput v2, p0, Lc/e/a/a/k/h/f$a;->i:I

    goto :goto_0

    .line 11
    :cond_3
    iput v1, p0, Lc/e/a/a/k/h/f$a;->i:I

    :goto_0
    return-object p0
.end method

.method public b(F)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 3
    iput p1, p0, Lc/e/a/a/k/h/f$a;->h:F

    return-object p0
.end method

.method public b(I)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 2
    iput p1, p0, Lc/e/a/a/k/h/f$a;->f:I

    return-object p0
.end method

.method public b(J)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/e/a/a/k/h/f$a;->a:J

    return-object p0
.end method

.method public c(F)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 12
    iput p1, p0, Lc/e/a/a/k/h/f$a;->j:F

    return-object p0
.end method

.method public c(I)Lc/e/a/a/k/h/f$a;
    .locals 0

    .line 11
    iput p1, p0, Lc/e/a/a/k/h/f$a;->i:I

    return-object p0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/k/h/f$a;->a:J

    .line 2
    iput-wide v0, p0, Lc/e/a/a/k/h/f$a;->b:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/a/k/h/f$a;->c:Landroid/text/SpannableStringBuilder;

    .line 4
    iput-object v0, p0, Lc/e/a/a/k/h/f$a;->d:Landroid/text/Layout$Alignment;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lc/e/a/a/k/h/f$a;->e:F

    const/high16 v1, -0x80000000

    .line 6
    iput v1, p0, Lc/e/a/a/k/h/f$a;->f:I

    .line 7
    iput v1, p0, Lc/e/a/a/k/h/f$a;->g:I

    .line 8
    iput v0, p0, Lc/e/a/a/k/h/f$a;->h:F

    .line 9
    iput v1, p0, Lc/e/a/a/k/h/f$a;->i:I

    .line 10
    iput v0, p0, Lc/e/a/a/k/h/f$a;->j:F

    return-void
.end method
