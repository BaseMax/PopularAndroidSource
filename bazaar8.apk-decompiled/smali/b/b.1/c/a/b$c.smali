.class public Lb/b/c/a/b$c;
.super Lb/b/c/a/b$f;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Lb/E/a/a/d;


# direct methods
.method public constructor <init>(Lb/E/a/a/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/b/c/a/b$f;-><init>(Lb/b/c/a/a;)V

    .line 2
    iput-object p1, p0, Lb/b/c/a/b$c;->a:Lb/E/a/a/d;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/b$c;->a:Lb/E/a/a/d;

    invoke-virtual {v0}, Lb/E/a/a/d;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/c/a/b$c;->a:Lb/E/a/a/d;

    invoke-virtual {v0}, Lb/E/a/a/d;->stop()V

    return-void
.end method
