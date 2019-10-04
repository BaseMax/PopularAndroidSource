.class public final Lcom/a/a/c/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:Lcom/a/a/c/l;

.field private c:Lcom/a/a/c/ab;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 97
    iput v0, p0, Lcom/a/a/c/j$a;->a:F

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/a/a/c/j$a;->d:Z

    return-void
.end method


# virtual methods
.method public final build()Lcom/a/a/c/j;
    .locals 5

    .line 163
    iget v0, p0, Lcom/a/a/c/j$a;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 164
    iput v0, p0, Lcom/a/a/c/j$a;->a:F

    .line 166
    :cond_0
    new-instance v0, Lcom/a/a/c/j;

    iget v1, p0, Lcom/a/a/c/j$a;->a:F

    iget-object v2, p0, Lcom/a/a/c/j$a;->b:Lcom/a/a/c/l;

    iget-object v3, p0, Lcom/a/a/c/j$a;->c:Lcom/a/a/c/ab;

    iget-boolean v4, p0, Lcom/a/a/c/j$a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/j;-><init>(FLcom/a/a/c/l;Lcom/a/a/c/ab;Z)V

    return-object v0
.end method

.method public final delay(F)Lcom/a/a/c/j$a;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    .line 110
    iget v1, p0, Lcom/a/a/c/j$a;->a:F

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 114
    iput p1, p0, Lcom/a/a/c/j$a;->a:F

    return-object p0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "delay already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delay must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final disabled(Z)Lcom/a/a/c/j$a;
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/a/a/c/j$a;->d:Z

    return-object p0
.end method

.method public final listener(Lcom/a/a/c/l;)Lcom/a/a/c/j$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/a/a/c/j$a;->b:Lcom/a/a/c/l;

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/a/a/c/j$a;->b:Lcom/a/a/c/l;

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "listener already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pinningInfo(Lcom/a/a/c/ab;)Lcom/a/a/c/j$a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/a/a/c/j$a;->c:Lcom/a/a/c/ab;

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/a/a/c/j$a;->c:Lcom/a/a/c/ab;

    return-object p0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "pinningInfoProvider already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pinningInfoProvider must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
