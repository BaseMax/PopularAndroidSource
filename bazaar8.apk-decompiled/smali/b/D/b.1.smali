.class public Lb/D/b;
.super Lb/D/K;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/D/K;-><init>()V

    .line 2
    invoke-virtual {p0}, Lb/D/b;->w()V

    return-void
.end method


# virtual methods
.method public final w()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/D/K;->b(I)Lb/D/K;

    .line 2
    new-instance v1, Lb/D/o;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/D/o;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    new-instance v1, Lb/D/m;

    invoke-direct {v1}, Lb/D/m;-><init>()V

    .line 3
    invoke-virtual {p0, v1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    new-instance v1, Lb/D/o;

    invoke-direct {v1, v0}, Lb/D/o;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Lb/D/K;->a(Lb/D/E;)Lb/D/K;

    return-void
.end method
