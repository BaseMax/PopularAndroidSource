.class public final Lcom/google/android/material/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/material/i/a;

.field private static final b:Lcom/google/android/material/i/b;


# instance fields
.field private c:Lcom/google/android/material/i/a;

.field private d:Lcom/google/android/material/i/a;

.field private e:Lcom/google/android/material/i/a;

.field private f:Lcom/google/android/material/i/a;

.field private g:Lcom/google/android/material/i/b;

.field private h:Lcom/google/android/material/i/b;

.field private i:Lcom/google/android/material/i/b;

.field private j:Lcom/google/android/material/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/material/i/a;

    invoke-direct {v0}, Lcom/google/android/material/i/a;-><init>()V

    sput-object v0, Lcom/google/android/material/i/e;->a:Lcom/google/android/material/i/a;

    .line 28
    new-instance v0, Lcom/google/android/material/i/b;

    invoke-direct {v0}, Lcom/google/android/material/i/b;-><init>()V

    sput-object v0, Lcom/google/android/material/i/e;->b:Lcom/google/android/material/i/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/google/android/material/i/e;->a:Lcom/google/android/material/i/a;

    iput-object v0, p0, Lcom/google/android/material/i/e;->c:Lcom/google/android/material/i/a;

    .line 42
    iput-object v0, p0, Lcom/google/android/material/i/e;->d:Lcom/google/android/material/i/a;

    .line 43
    iput-object v0, p0, Lcom/google/android/material/i/e;->e:Lcom/google/android/material/i/a;

    .line 44
    iput-object v0, p0, Lcom/google/android/material/i/e;->f:Lcom/google/android/material/i/a;

    .line 45
    sget-object v0, Lcom/google/android/material/i/e;->b:Lcom/google/android/material/i/b;

    iput-object v0, p0, Lcom/google/android/material/i/e;->g:Lcom/google/android/material/i/b;

    .line 46
    iput-object v0, p0, Lcom/google/android/material/i/e;->h:Lcom/google/android/material/i/b;

    .line 47
    iput-object v0, p0, Lcom/google/android/material/i/e;->i:Lcom/google/android/material/i/b;

    .line 48
    iput-object v0, p0, Lcom/google/android/material/i/e;->j:Lcom/google/android/material/i/b;

    return-void
.end method


# virtual methods
.method public final getBottomEdge()Lcom/google/android/material/i/b;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/material/i/e;->i:Lcom/google/android/material/i/b;

    return-object v0
.end method

.method public final getBottomLeftCorner()Lcom/google/android/material/i/a;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/material/i/e;->f:Lcom/google/android/material/i/a;

    return-object v0
.end method

.method public final getBottomRightCorner()Lcom/google/android/material/i/a;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/android/material/i/e;->e:Lcom/google/android/material/i/a;

    return-object v0
.end method

.method public final getLeftEdge()Lcom/google/android/material/i/b;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/android/material/i/e;->j:Lcom/google/android/material/i/b;

    return-object v0
.end method

.method public final getRightEdge()Lcom/google/android/material/i/b;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/android/material/i/e;->h:Lcom/google/android/material/i/b;

    return-object v0
.end method

.method public final getTopEdge()Lcom/google/android/material/i/b;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/material/i/e;->g:Lcom/google/android/material/i/b;

    return-object v0
.end method

.method public final getTopLeftCorner()Lcom/google/android/material/i/a;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/material/i/e;->c:Lcom/google/android/material/i/a;

    return-object v0
.end method

.method public final getTopRightCorner()Lcom/google/android/material/i/a;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/material/i/e;->d:Lcom/google/android/material/i/a;

    return-object v0
.end method

.method public final setAllCorners(Lcom/google/android/material/i/a;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/android/material/i/e;->c:Lcom/google/android/material/i/a;

    .line 58
    iput-object p1, p0, Lcom/google/android/material/i/e;->d:Lcom/google/android/material/i/a;

    .line 59
    iput-object p1, p0, Lcom/google/android/material/i/e;->e:Lcom/google/android/material/i/a;

    .line 60
    iput-object p1, p0, Lcom/google/android/material/i/e;->f:Lcom/google/android/material/i/a;

    return-void
.end method

.method public final setAllEdges(Lcom/google/android/material/i/b;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/material/i/e;->j:Lcom/google/android/material/i/b;

    .line 70
    iput-object p1, p0, Lcom/google/android/material/i/e;->g:Lcom/google/android/material/i/b;

    .line 71
    iput-object p1, p0, Lcom/google/android/material/i/e;->h:Lcom/google/android/material/i/b;

    .line 72
    iput-object p1, p0, Lcom/google/android/material/i/e;->i:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setBottomEdge(Lcom/google/android/material/i/b;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/google/android/material/i/e;->i:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setBottomLeftCorner(Lcom/google/android/material/i/a;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/i/e;->f:Lcom/google/android/material/i/a;

    return-void
.end method

.method public final setBottomRightCorner(Lcom/google/android/material/i/a;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/android/material/i/e;->e:Lcom/google/android/material/i/a;

    return-void
.end method

.method public final setCornerTreatments(Lcom/google/android/material/i/a;Lcom/google/android/material/i/a;Lcom/google/android/material/i/a;Lcom/google/android/material/i/a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/material/i/e;->c:Lcom/google/android/material/i/a;

    .line 89
    iput-object p2, p0, Lcom/google/android/material/i/e;->d:Lcom/google/android/material/i/a;

    .line 90
    iput-object p3, p0, Lcom/google/android/material/i/e;->e:Lcom/google/android/material/i/a;

    .line 91
    iput-object p4, p0, Lcom/google/android/material/i/e;->f:Lcom/google/android/material/i/a;

    return-void
.end method

.method public final setEdgeTreatments(Lcom/google/android/material/i/b;Lcom/google/android/material/i/b;Lcom/google/android/material/i/b;Lcom/google/android/material/i/b;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/i/e;->j:Lcom/google/android/material/i/b;

    .line 108
    iput-object p2, p0, Lcom/google/android/material/i/e;->g:Lcom/google/android/material/i/b;

    .line 109
    iput-object p3, p0, Lcom/google/android/material/i/e;->h:Lcom/google/android/material/i/b;

    .line 110
    iput-object p4, p0, Lcom/google/android/material/i/e;->i:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setLeftEdge(Lcom/google/android/material/i/b;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/i/e;->j:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setRightEdge(Lcom/google/android/material/i/b;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/android/material/i/e;->h:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setTopEdge(Lcom/google/android/material/i/b;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/android/material/i/e;->g:Lcom/google/android/material/i/b;

    return-void
.end method

.method public final setTopLeftCorner(Lcom/google/android/material/i/a;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/android/material/i/e;->c:Lcom/google/android/material/i/a;

    return-void
.end method

.method public final setTopRightCorner(Lcom/google/android/material/i/a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/google/android/material/i/e;->d:Lcom/google/android/material/i/a;

    return-void
.end method
