.class public Lb/D/K$a;
.super Lb/D/F;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/D/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Lb/D/K;


# direct methods
.method public constructor <init>(Lb/D/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/D/F;-><init>()V

    .line 2
    iput-object p1, p0, Lb/D/K$a;->a:Lb/D/K;

    return-void
.end method


# virtual methods
.method public a(Lb/D/E;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/D/K$a;->a:Lb/D/K;

    iget-boolean v0, p1, Lb/D/K;->N:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/D/E;->t()V

    .line 3
    iget-object p1, p0, Lb/D/K$a;->a:Lb/D/K;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/D/K;->N:Z

    :cond_0
    return-void
.end method

.method public c(Lb/D/E;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/D/K$a;->a:Lb/D/K;

    iget v1, v0, Lb/D/K;->M:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lb/D/K;->M:I

    .line 2
    iget v1, v0, Lb/D/K;->M:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lb/D/K;->N:Z

    .line 4
    invoke-virtual {v0}, Lb/D/E;->a()V

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lb/D/E;->b(Lb/D/E$c;)Lb/D/E;

    return-void
.end method
